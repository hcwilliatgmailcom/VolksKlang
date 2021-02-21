using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace VolksKlang.Models
{
    public class Objekt
    {

        public int ID { get; set; }

  
        public virtual Herkunft Herkunft { get; set; }

        public Standort Standort { get; set; }

        public string Objektbezeichnung { get; set; }

 

        public Kategorie Kategorie { get; set; }

        public string Beschreibung { get; set; }

        public string Material { get; set; }

        public string Abmessungen { get; set; }

        public string  Zustand { get; set; }

        public string Objektbeschriftung { get; set; }

        public Bild Bild { get; set; }

        public Bezeichnung Bezeichnung { get; set; }

        public bool Vorlage { get; set; }


        public string Name { get; set; }

        public DateTime Datum { get; set; }

        public int Euro { get; set; }


    }
}
