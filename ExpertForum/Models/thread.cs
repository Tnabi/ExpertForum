namespace ExpertForum.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("thread")]
    public partial class thread
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public thread()
        {
            messages = new HashSet<message>();
        }

        [Key]
        public int thread_id { get; set; }

        [Required]
        [StringLength(13)]
        public string adviser_id { get; set; }

        [Required]
        [StringLength(13)]
        public string client_id { get; set; }

        public DateTime? created_at { get; set; }

        public int rate { get; set; }

        public string comment { get; set; }

        public DateTime? deadline { get; set; }

        public DateTime? finished_at { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<message> messages { get; set; }
    }
}
