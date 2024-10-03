namespace ExpertForum.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("category")]
    public partial class category
    {
        [Key]
        public int category_id { get; set; }

        public int? parent_id { get; set; }

        [Required]
        [StringLength(100)]
        public string category_name { get; set; }

        public DateTime? created_at { get; set; }
    }
}
