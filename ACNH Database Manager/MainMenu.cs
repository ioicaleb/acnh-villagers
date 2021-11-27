using System;
using System.Collections.Generic;
using System.Text;

namespace ACNH_Database_Manager
{
    public class MainMenu
    {
        private readonly VillagerDBManDAO villagerDAO = new VillagerDBManDAO();

        private readonly VillagerIO villagerIO = new VillagerIO();

        private readonly Villager Villager = new Villager();

        public MainMenu() { }

        public void DisplayMainMenu()
        {
            Console.WriteLine("Animal Crossing New Horizons Villager Database Manager");
            Console.WriteLine();
            bool quit = false;
            while (!quit)
            {
                List<Villager> vlist = villagerDAO.GetVillagers();
                Console.WriteLine("1)Add new villager\n" +
                                          "2)Input favorite color and style to all villagers\n" +
                                          "3)Add favorite color and style to all villagers from file\n" +
                                          "4)Quit\n\n" +
                                          "What do you need to do?");
                if (!int.TryParse(Console.ReadLine(), out int input))
                {
                    Console.WriteLine("Invalid input. Please try again");
                }
                Console.WriteLine();
                switch (input)
                {
                    case 1:
                        Villager villager = Villager.CreateVillager();
                        villagerDAO.CreateVillager(villager);
                        break;
                    case 2:
                        List<Villager> updatedVillagers = Villager.AddColorStyle(vlist);
                        villagerDAO.UpdateColorStyle(updatedVillagers);
                        break;
                    case 3:
                        updatedVillagers = villagerIO.ReadColorStyleFile();
                        villagerDAO.UpdateColorStyle(updatedVillagers);
                        break;
                    case 4:
                        quit = true;
                        break;
                }
            }
        }
    }
}
