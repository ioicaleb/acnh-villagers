using ACVillagersAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ACVillagersAPI
{
    public interface IVillagerSqlDAO
    {
        public Dictionary<string, Villager> GetVillagers();
        public Villager GetVillagerByName(string name);
        public Villager GetVillagerByBirthday();
        public List<Villager> GetVillagerBySpecies(string species);
        public List<Villager> GetVillagerByPersonality(string personality);

    }
}
