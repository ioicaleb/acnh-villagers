using ACVillagersAPI.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace ACVillagersAPI
{
    public class VillagerSqlDAO : IVillagerSqlDAO
    {
        private readonly string ConnStr = "Server=.\\SQLEXPRESS;Database=villagers;Trusted_Connection=True;";

        private const string GetVillager =
            "SELECT name, gender, birthday, catchphrase, personality, species, style1, style2, color1, color2 FROM villager v";

        public Dictionary<string, Villager> GetVillagers()
        {
            Dictionary<string, Villager> villagers = new Dictionary<string, Villager>();
            using (SqlConnection conn = new SqlConnection(ConnStr))
            {
                conn.Open();

                using SqlCommand command = new SqlCommand(GetVillager, conn);
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    Villager villager = CreateVillager(reader);
                    villagers[villager.Name] = villager;
                }
            }
            return villagers;
        }


        public Villager GetVillagerByName(string name)
        {
            using (SqlConnection conn = new SqlConnection(ConnStr))
            {
                conn.Open();
                Villager villager = null;
                using SqlCommand command = new SqlCommand(GetVillager + " WHERE name = @name", conn);
                command.Parameters.AddWithValue("@name", name);
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    villager = CreateVillager(reader);
                }
                return villager;
            }
        }

        public Villager GetVillagerByBirthday()
        {
            using (SqlConnection conn = new SqlConnection(ConnStr))
            {
                Villager villager = null;
                conn.Open();
                string birthdayQuery = GetVillager + " WHERE birthday LIKE @birthday";
                string todayDate = DateTime.Today.ToString("M");
                switch(todayDate.Substring(todayDate.Length - 2, 2))
                {
                    case " 1":
                        todayDate += "st";
                        break;
                    case " 2":
                        todayDate += "nd";
                        break;
                    case " 3":
                        todayDate += "rd";
                        break;
                    default:
                        todayDate += "th";
                        break;
                }
                using SqlCommand command = new SqlCommand(birthdayQuery, conn);
                command.Parameters.AddWithValue("@birthday", todayDate);
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    villager = CreateVillager(reader);
                }
                return villager;
            }
        }

        public List<Villager> GetVillagerBySpecies(string species)
        {
            List<Villager> villagers = new List<Villager>();
            using (SqlConnection conn = new SqlConnection(ConnStr))
            {
                conn.Open();

                using SqlCommand command = new SqlCommand(GetVillager + " WHERE species = @species", conn);
                command.Parameters.AddWithValue("@species", species);
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    Villager villager = CreateVillager(reader);
                    villagers.Add(villager);
                }
                return villagers;
            }
        }

        public List<Villager> GetVillagerByPersonality(string personality)
        {
            List<Villager> villagers = new List<Villager>();
            using (SqlConnection conn = new SqlConnection(ConnStr))
            {
                conn.Open();

                using SqlCommand command = new SqlCommand(GetVillager + " WHERE personality = @personality", conn);
                command.Parameters.AddWithValue("@personality", personality);
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    Villager villager = CreateVillager(reader);
                    villagers.Add(villager);
                }
                return villagers;
            }
        }

        private Villager CreateVillager(SqlDataReader reader)
        {
            Villager villager = new Villager
            {
                Name = reader["name"].ToString(),
                Gender = reader["gender"].ToString(),
                Birthday = reader["birthday"].ToString(),
                Catchphrase = reader["catchphrase"].ToString(),
                Personality = reader["personality"].ToString(),
                Species = reader["species"].ToString(),
                Style1 = reader["style1"].ToString(),
                Style2 = reader["style2"].ToString(),
                Color1 = reader["color1"].ToString(),
                Color2 = reader["color2"].ToString()
            };
            return villager;
        }
    }

}
