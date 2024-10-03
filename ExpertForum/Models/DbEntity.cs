using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace ExpertForum.Models
{
    public partial class DbEntity : DbContext
    {
        public DbEntity()
            : base("name=DbEntity")
        {
        }

        public virtual DbSet<category> categories { get; set; }
        public virtual DbSet<medium> media { get; set; }
        public virtual DbSet<message> messages { get; set; }
        public virtual DbSet<qa_store> qa_store { get; set; }
        public virtual DbSet<thread> threads { get; set; }
        public virtual DbSet<user> users { get; set; }
        public virtual DbSet<user_role> user_role { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<category>()
                .Property(e => e.category_name)
                .IsUnicode(false);

            modelBuilder.Entity<medium>()
                .Property(e => e.media_url)
                .IsUnicode(false);

            modelBuilder.Entity<message>()
                .Property(e => e.created_id)
                .IsUnicode(false);

            modelBuilder.Entity<qa_store>()
                .Property(e => e.created_id)
                .IsUnicode(false);

            modelBuilder.Entity<thread>()
                .Property(e => e.adviser_id)
                .IsUnicode(false);

            modelBuilder.Entity<thread>()
                .Property(e => e.client_id)
                .IsUnicode(false);

            modelBuilder.Entity<thread>()
                .HasMany(e => e.messages)
                .WithRequired(e => e.thread)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<user>()
                .Property(e => e.user_id)
                .IsUnicode(false);

            modelBuilder.Entity<user>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<user>()
                .Property(e => e.password)
                .IsUnicode(false);

            modelBuilder.Entity<user>()
                .Property(e => e.address)
                .IsUnicode(false);

            modelBuilder.Entity<user>()
                .Property(e => e.user_name)
                .IsUnicode(false);

            modelBuilder.Entity<user>()
                .Property(e => e.created_id)
                .IsUnicode(false);

            modelBuilder.Entity<user>()
                .Property(e => e.updated_id)
                .IsUnicode(false);

            modelBuilder.Entity<user>()
                .HasMany(e => e.messages)
                .WithRequired(e => e.user)
                .HasForeignKey(e => e.created_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<user_role>()
                .Property(e => e.role_name)
                .IsUnicode(false);
        }
    }
}
