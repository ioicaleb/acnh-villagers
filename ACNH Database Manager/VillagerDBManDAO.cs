using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

namespace ACNH_Database_Manager
{
    public class VillagerDBManDAO
    {
        private readonly string connString = "Server=.\\SQLEXPRESS;Database=villagers;Trusted_Connection=True;";

        private const string SqlGetNames = "SELECT name, style1, style2, color1, color2 FROM villager";

        private const string SqlCreateVillager = "INSERT INTO villager (name, gender, personality, species, birthday, catchphrase) " +
                                                 "VALUES (@name, @gender, @personality, @species, @birthday, @catchphrase)";

        private const string SqlUpdateColorStyle = "UPDATE villager SET style1 = @style1, style2 = @style2, color1 = @color1, color2 = @color2 WHERE name = @name";

        public List<Villager> GetVillagers()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                List<Villager> vlist = new List<Villager>();
                conn.Open();
                SqlCommand command = new SqlCommand(SqlGetNames, conn);
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    Villager v = new Villager()
                    {
                        Name = reader["name"].ToString()
                    };
                    v = CheckForStyleAndColor(reader, v);
                    vlist.Add(v);
                }
                return vlist;
            }
        }

        public Villager CheckForStyleAndColor(SqlDataReader reader, Villager v)
        {
            if (reader["style1"] != null)
            {
                v.Style1 = reader["style1"].ToString();
            }
            else
            {
                v.Style1 = null;
            }
            if (reader["style2"] != null)
            {
                v.Style2 = reader["style2"].ToString();
            }
            else
            {
                v.Style2 = null;
            }
            if (reader["Color1"] != null)
            {
                v.Color1 = reader["color1"].ToString();
            }
            else
            {
                v.Color1 = null;
            }
            if (reader["color2"] != null)
            {
                v.Color2 = reader["color2"].ToString();
            }
            else
            {
                v.Color2 = null;
            }
            return v;
        }

        public void CreateVillager(Villager villager)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(connString))
                {
                    conn.Open();
                    SqlCommand vCommand = new SqlCommand(SqlCreateVillager, conn);
                    vCommand.Parameters.AddWithValue("@name", villager.Name);
                    vCommand.Parameters.AddWithValue("@gender", villager.Gender);
                    vCommand.Parameters.AddWithValue("@personality", villager.Personality);
                    vCommand.Parameters.AddWithValue("@species", villager.Species);
                    vCommand.Parameters.AddWithValue("@catchphrase", villager.Catchphrase);
                    vCommand.Parameters.AddWithValue("@birthday", villager.Birthday);
                    vCommand.ExecuteNonQuery();

                    SqlCommand sCommand = new SqlCommand(SqlUpdateColorStyle, conn);
                    sCommand.Parameters.AddWithValue("@name", villager.Name);
                    sCommand.Parameters.AddWithValue("@name1", villager.Style1);
                    sCommand.Parameters.AddWithValue("@name2", villager.Style2);
                    sCommand.Parameters.AddWithValue("@name1", villager.Color1);
                    sCommand.Parameters.AddWithValue("@name2", villager.Color2);
                    sCommand.ExecuteNonQuery();
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("Problem adding villager: " + ex.Message);
            }
        }

        public void UpdateColorStyle(List<Villager> vlist)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(connString))
                {
                    conn.Open();

                    foreach (Villager villager in vlist)
                    {
                        SqlCommand sCommand = new SqlCommand(SqlUpdateColorStyle, conn);
                        sCommand.Parameters.AddWithValue("@name", villager.Name);
                        sCommand.Parameters.AddWithValue("@style1", villager.Style1);
                        if (villager.Style2 != null)
                        {
                            sCommand.Parameters.AddWithValue("@style2", villager.Style2);
                        }
                        else 
                        {
                            sCommand.Parameters.AddWithValue("@style2", "None");
                        }
                        sCommand.Parameters.AddWithValue("@color1", villager.Color1);
                        if (villager.Color2 != null)
                        {
                            sCommand.Parameters.AddWithValue("@color2", villager.Color2);
                        }
                        else
                        {
                            sCommand.Parameters.AddWithValue("@color2", "None");
                        }
                        sCommand.ExecuteNonQuery();
                    }
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("Problem updating colors and styles: " + ex.Message);
            }
        }
    }
}
