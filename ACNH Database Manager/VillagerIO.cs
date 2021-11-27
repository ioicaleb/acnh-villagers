using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace ACNH_Database_Manager
{
    public class VillagerIO
    {
        public List<Villager> ReadColorStyleFile()
        {
            string directory = Environment.CurrentDirectory;
            string filename = "VillagerColorStyle.csv";

            string fullPath = Path.Combine(directory, filename);

            List<Villager> villagersToUpdate = new List<Villager>();

            try
            {
                using (StreamReader reader = new StreamReader(fullPath))
                {
                    while (!reader.EndOfStream)
                    {
                        string line = reader.ReadLine();

                        string[] details = line.Split("|");
                        string[] colors = details[1].Split(",");
                        string[] styles = details[2].Split(",");
                        Villager villager = new Villager
                        {
                            Name = details[0],
                            Color1 = colors[0],
                            Style1 = styles[0]
                        };
                        if (colors.Length > 1) 
                        {
                            villager.Color2 = colors[1];
                        }
                        if (styles.Length > 1)
                        {
                            villager.Style2 = styles[1];
                        }

                        villagersToUpdate.Add(villager);
                    }
                }
                return villagersToUpdate;
            }
            catch (IOException ex)
            {
                Console.WriteLine("Error reading file: " + ex.Message);
                return null;
            }
        }
    }
}
