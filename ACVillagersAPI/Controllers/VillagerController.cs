using ACVillagersAPI.Data_Access_Objects;
using ACVillagersAPI.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ACVillagersAPI.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class villagerController : ControllerBase
    {
        private IVillagerSqlDAO villagerSqlDAO = new VillagerSqlDAO();
        private IVillagerOTDSqlDAO votdSqlDAO = new VillagerOTDSqlDAO();

        [HttpGet]
        public ActionResult GetVillagers()
        {
            Dictionary<string, Villager> villagers = villagerSqlDAO.GetVillagers();
            if (villagers.Count > 0)
            {
                return Ok(villagers);
            }
            return BadRequest("Problem getting villagers");
        }

        [HttpGet("{name}")]
        public ActionResult GetVillagerByName(string name)
        {
            Villager villager = villagerSqlDAO.GetVillagerByName(name);
            if (villager != null)
            {
                return Ok(villager);
            }
            return BadRequest("Problem getting villager by name");
        }

        [HttpGet("birthday")]
        public ActionResult GetVillagerByBirthday()
        {
            Villager villager = villagerSqlDAO.GetVillagerByBirthday();
            if (villager != null)
            {
                return Ok(villager);
            }
            return BadRequest("Problem getting villager by birthday");
        }

        [HttpGet("species/{species}")]
        public ActionResult GetVillagerBySpecies(string species)
        {
            List<Villager> villagers = villagerSqlDAO.GetVillagerBySpecies(species);
            if (villagers.Count > 0)
            {
                return Ok(villagers);
            }
            return BadRequest("Problem getting villagers by species");
        }

        [HttpGet("personality/{personality}")]
        public ActionResult GetVillagerByPersonality(string personality)
        {
            List<Villager> villagers = villagerSqlDAO.GetVillagerByPersonality(personality);
            if (villagers.Count > 0)
            {
                return Ok(villagers);
            }
            return BadRequest("Problem getting villagers by personality");
        }

        [HttpGet("VOTD")]
        public ActionResult GetVOTD()
        {
            VillagerOfTheDay votd = votdSqlDAO.GetVillagerOfTheDay(villagerSqlDAO.GetVillagers());
            if (votd == null)
            {
                return BadRequest("Could not get villager of the day");
            }
            return Ok(votd);
        }
    }
}
