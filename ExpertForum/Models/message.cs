namespace ExpertForum.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("message")]
    public partial class message
    {
        [Key]
        public int message_id { get; set; }

        public string content { get; set; }

        public DateTime created_at { get; set; }

        public int? media_id { get; set; }

        public int thread_id { get; set; }

        [Required]
        [StringLength(13)]
        public string created_id { get; set; }

        public virtual medium medium { get; set; }

        public virtual user user { get; set; }

        public virtual thread thread { get; set; }
    }
}
