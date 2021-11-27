using System;
using System.Collections.Generic;
using System.Text;

namespace ACNH_Database_Manager
{
    public static class CLIHelper
    {
        public static string GetString(string message)
        {
            string userInput;
            int numberOfAttempts = 0;

            do
            {
                if (numberOfAttempts > 0)
                {
                    Console.WriteLine("Invalid input format. Please try again");
                }

                Console.Write(message + ": ");
                userInput = Console.ReadLine();
                numberOfAttempts++;
            }
            while (string.IsNullOrEmpty(userInput));

            Console.WriteLine();
            return userInput;
        }
    }
}
