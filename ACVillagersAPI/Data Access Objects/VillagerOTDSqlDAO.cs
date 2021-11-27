using ACVillagersAPI.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace ACVillagersAPI.Data_Access_Objects
{
    public class VillagerOTDSqlDAO : IVillagerOTDSqlDAO
    {
        private readonly string ConnStr = "Server=.\\SQLEXPRESS;Database=villagers;Trusted_Connection=True;";

        private const string GetVillagerOTD = "SELECT TOP 1 name, picked FROM villager_of_the_day ORDER BY picked";

        private const string AddVOTD =
            "INSERT INTO villager_of_the_day (name, picked) " +
            "VALUES (@name, @picked)";

        public VillagerOfTheDay GetVillagerOfTheDay(Dictionary<string, Villager> villagers)
        {
            using SqlConnection conn = new SqlConnection(ConnStr);
            conn.Open();
            VillagerOfTheDay votd = new VillagerOfTheDay();
            using SqlCommand command = new SqlCommand(GetVillagerOTD, conn);
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                votd.Name = reader["name"].ToString();
                votd.Today = DateTime.Parse(reader["picked"].ToString());
            }
            if (votd == null || votd.Today != DateTime.Today)
            {
                votd = CreateVOTD(villagers);
            }
            return votd;
        }

        private VillagerOfTheDay CreateVOTD(Dictionary<string, Villager> villagers)
        {
            Random random = new Random();
            int villagerIndex = random.Next(villagers.Count);
            Villager v = villagers.ElementAt(villagerIndex).Value;
            VillagerOfTheDay votd = new VillagerOfTheDay
            {
                Name = v.Name,
                Today = DateTime.Today
            };
            if (AddVOTDToDB(votd))
            {
                return votd;
            }
            return null;
        }

        private bool AddVOTDToDB(VillagerOfTheDay votd)
        {
            using (SqlConnection conn = new SqlConnection(ConnStr))
            {
                conn.Open();
                using SqlCommand command = new SqlCommand(AddVOTD, conn);
                command.Parameters.AddWithValue("@name", votd.Name);
                command.Parameters.AddWithValue("@picked", votd.Today.ToString("M"));
                command.ExecuteNonQuery();
                return true;
            }
        }
    }
}
