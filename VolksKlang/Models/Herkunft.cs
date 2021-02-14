using System.Collections.Generic;

namespace VolksKlang.Models
{
    public class Herkunft
    {

        public int ID { get; set; }
        public string Name { get; set; }
        public virtual ICollection<Objekt> Objekts { get; set; }

    }
}