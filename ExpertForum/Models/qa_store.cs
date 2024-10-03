namespace ExpertForum.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class qa_store
    {
        [Key]
        public int question_id { get; set; }

        [Required]
        public string question { get; set; }

        [Required]
        public string answer { get; set; }

        [Required]
        [StringLength(13)]
        public string created_id { get; set; }

        public DateTime created_at { get; set; }

        public int? thread_id { get; set; }

        public int category_id { get; set; }
    }
}
