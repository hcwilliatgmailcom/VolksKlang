 
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
 
        public DbSet<VolksKlang.Models.Kategorie> Kategorie { get; set; }


        public DbSet<AppFile> File { get; set; }


        public DbSet<VolksKlang.Models.Bezeichnung> Bezeichnung { get; set; }


        public DbSet<VolksKlang.Models.Erfasser> Erfasser { get; set; }

 




    }
}
