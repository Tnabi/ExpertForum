namespace ExpertForum.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("user")]
    public partial class user
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public user()
        {
            messages = new HashSet<message>();
        }

        [Key]
        [StringLength(13)]
        public string user_id { get; set; }

        [Required]
        [StringLength(255)]
        public string email { get; set; }

        [StringLength(255)]
        public string password { get; set; }

        public int role_id { get; set; }

        [Column(TypeName = "date")]
        public DateTime? birthday { get; set; }

        [StringLength(255)]
        public string address { get; set; }

        [Required]
        [StringLength(100)]
        public string user_name { get; set; }

        public bool delete_flg { get; set; }

        public bool change_pw_flg { get; set; }

        public DateTime? last_login { get; set; }

        [StringLength(13)]
        public string created_id { get; set; }

        public DateTime? created_at { get; set; }

        [StringLength(255)]
        public string updated_id { get; set; }

        public DateTime? updated_at { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<message> messages { get; set; }
    }
}
