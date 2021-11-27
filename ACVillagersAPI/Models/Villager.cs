using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ACVillagersAPI.Models
{
    public class Villager
    {
        [Required]
        public string Name { get; set; }
        public string Gender { get; set; }
        public string Personality { get; set; }
        public string Species { get; set; }
        public string Birthday { get; set; }
        public string Catchphrase { get; set; }
        public string Style1 { get; set; }
        public string Style2 { get; set; }
        public string Color1 { get; set; }
        public string Color2 { get; set; }
    }
}
