using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace ExpertForum
{
    public class Global : HttpApplication
    {
        private static NewDayDetector detector;

        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            detector = new NewDayDetector();
            Application["Visitors"] = 0;
        }

        void Application_BeginRequest(object sender, EventArgs e)
        {
            Application.Lock();
            if (detector.IsNewDay)
            {
                string connectionString = ConfigurationManager.ConnectionStrings["cnnStr"].ConnectionString;

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    StringBuilder query = new StringBuilder();
                    query.Append("INSERT INTO dbo.[visitors] ([visitor_count], [date])");
                    query.Append("VALUES (@Visitors, GETDATE());");

                    SqlCommand command = new SqlCommand(query.ToString(), connection);
                    command.Parameters.AddWithValue("@Visitors", Convert.ToInt32(Application["Visitors"]));

                    connection.Open();
                    command.ExecuteNonQuery();
                    connection.Close();
                }
                Application["Visitors"] = 1;
            }
            else
            {
                Application["Visitors"] = Convert.ToInt32(Application["Visitors"]) + 1;
            }
            Application.UnLock();
        }

        class NewDayDetector
        {
            private DateTime cachedToday;
            private bool isNewDay;

            public NewDayDetector()
            {
                cachedToday = DateTime.Today;
                isNewDay = false;
            }

            public bool IsNewDay
            {
                get { return isNewDay; }
            }

            public void Update()
            {
                var currentToday = DateTime.Today;
                if (currentToday != cachedToday)
                {
                    isNewDay = true;
                    cachedToday = currentToday;
                }
                else
                {
                    isNewDay = false;
                }
            }
        }
    }
}