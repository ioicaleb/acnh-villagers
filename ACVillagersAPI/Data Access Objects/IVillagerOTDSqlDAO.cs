using ACVillagersAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ACVillagersAPI.Data_Access_Objects
{
    public interface IVillagerOTDSqlDAO
    {
        public VillagerOfTheDay GetVillagerOfTheDay(Dictionary<string, Villager> villagers);
    }
}
