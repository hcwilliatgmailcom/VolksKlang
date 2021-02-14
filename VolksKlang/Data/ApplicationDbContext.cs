 
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;
using VolksKlang.Models;

namespace VolksKlang.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
        public DbSet<VolksKlang.Models.Standort> Standort { get; set; }
        public DbSet<VolksKlang.Models.Objekt> Objekt { get; set; }
        public DbSet<VolksKlang.Models.Herkunft> Herkunft { get; set; }
        public DbSet<VolksKlang.Models.Typ> Typ { get; set; }
        public DbSet<VolksKlang.Models.Kategorie> Kategorie { get; set; }


        public DbSet<Book> Book { get; set; }

        public DbSet<Publisher> Publisher { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseMySQL("server=hcwilli.at;database=d0356620;user=d0356620;password=3Tx8wFsTHpQsGBmR");
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<Publisher>(entity =>
            {
                entity.HasKey(e => e.ID);
                entity.Property(e => e.Name).IsRequired();
            });

            modelBuilder.Entity<Book>(entity =>
            {
                entity.HasKey(e => e.ISBN);
                entity.Property(e => e.Title).IsRequired();
                entity.HasOne(d => d.Publisher)
                  .WithMany(p => p.Books);
            });

            //ALTER TABLE Herkunft ENGINE = InnoDB
            //ALTER TABLE Herkunft ENGINE = InnoDB
            //ALTER TABLE Objekt ADD CONSTRAINT `fk_objekt_herkunft` FOREIGN KEY(HerkunftID) REFERENCES `Herkunft` (`ID`)             


        }


    }
}
