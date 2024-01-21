using Management;
using MySql.Data.MySqlClient;
class Program
{
    static void Main(string[] args)
    {
        string Str = "server=127.0.0.1;user=root;database=pms;port=3306;password=admin123";

        MySqlConnection conn = new MySqlConnection(Str);

        CRUDOperation productdabase = new CRUDOperation();

        while (true)
        {
            Console.WriteLine("PRODUCT MANAGEMENT SYSTEM");
            Console.WriteLine("-----------------");
            Console.WriteLine("1.Add Product");
            Console.WriteLine("2.View Product");
            Console.WriteLine("3.Update Product");
            Console.WriteLine("4.Delete Product");
            Console.WriteLine("5.Exit");

            Console.WriteLine("Enter your Choice :");

            string? choice = Console.ReadLine();

            switch (choice)
            {
                case "1":

                    productdabase.AddData(conn);

                    break;

                case "2":

                    productdabase.ReadData(conn);

                    break;

                case "3":

                    productdabase.UpdateData(conn);

                    break;


                case "4":

                    productdabase.DeleteData(conn);

                    break;

                case "5":

                    Environment.Exit(0);
                    break;

                default:

                    Console.WriteLine("Invalid choice ?!!! Please Try Again");

                    break;
            }

        }

    }
}

