using System;
using Management;
using MySql.Data.MySqlClient;

partial class CRUDOperation : CRUD

{
        public override void AddData(MySqlConnection conn)
    {
        Console.WriteLine("Enter the Id of the Product :");
        int id = Convert.ToInt32(Console.ReadLine());

        Console.WriteLine("Enter the Name of the Product : ");
        string? name = Console.ReadLine();

        Console.WriteLine("Enter the Quantity of the Product :");
        int quantity = Convert.ToInt32(Console.ReadLine());

        Console.WriteLine("Enter the Price of the Product :");
        int price = Convert.ToInt32(Console.ReadLine());

        try
        {
            conn.Open();
            string insertquery = $"insert into product(product_id,product_name,product_quantity,product_price) value('{id}','{name}','{quantity}','{price}')";
            MySqlCommand cmd = new MySqlCommand(insertquery, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }

        Console.WriteLine("Product Record Added successfully");
    }
}

