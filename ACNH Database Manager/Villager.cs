using System;
using System.Collections.Generic;
using System.Text;

namespace ACNH_Database_Manager
{
    public class Villager
    {
        public Villager() { }

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


        public Villager CreateVillager()
        {
            Villager v = new Villager()
            {
                Name = CLIHelper.GetString("Enter villager's name"),
                Gender = CLIHelper.GetString("Enter villager's gender"),
                Personality = CLIHelper.GetString("Enter villager's personality"),
                Species = CLIHelper.GetString("Enter villager's species"),
                Birthday = CLIHelper.GetString("Enter villager's birthday (month day)"),
                Catchphrase = CLIHelper.GetString("Enter villager's catchphrase"),
                Style1 = CLIHelper.GetString("Enter villager's style"),
                Style2 = CLIHelper.GetString("Enter villager's other style"),
                Color1 = CLIHelper.GetString("Enter villager's color"),
                Color2 = CLIHelper.GetString("Enter villager's other color")
            };
            return v;
        }

        public List<Villager> AddColorStyle(List<Villager> vlist)
        {
            List<Villager> updatedVillagers = new List<Villager>();
            foreach (Villager v in vlist)
            {
                if (v.Style1 == "" && v.Style2 == "")
                {
                    string input = CLIHelper.GetString($"Enter {v.Name}'s style");
                    if (input == "quit")
                    {
                        break;
                    }
                    v.Style1 = input;
                    input = CLIHelper.GetString($"Enter {v.Name}'s other style");
                    if (input == "quit")
                    {
                        break;
                    }
                    if (input != "none")
                    {
                        v.Style2 = input;
                    }
                }
                if (v.Color1 == "" && v.Color2 == "")
                {
                    string input = CLIHelper.GetString($"Enter {v.Name}'s color");
                    if (input == "quit")
                    {
                        break;
                    }
                    v.Color1 = input;
                    input = CLIHelper.GetString($"Enter {v.Name}'s other color");
                    if (input == "quit")
                    {
                        break;
                    }
                    if (input != "none")
                    {
                        v.Color2 = input;
                    }
                }
                updatedVillagers.Add(v);
            }
            return updatedVillagers;
        }
    }
}
