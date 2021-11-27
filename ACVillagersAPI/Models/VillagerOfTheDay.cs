using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ACVillagersAPI.Models
{
    public class VillagerOfTheDay
    {
        [Required]
        public string Name { get; set; }
        [Required]
        public DateTime Today { get; set; }
    }
}
