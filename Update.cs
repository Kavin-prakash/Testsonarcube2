using System;
using Management;
using MySql.Data.MySqlClient;


partial class CRUDOperation
{
    public override void UpdateData(MySqlConnection conn)
    {
        Console.WriteLine("Updating  values into the Tables: ");
        Console.WriteLine("What you want to update");
        Console.WriteLine("1 . Product  ID");
        Console.WriteLine("2 . Product  Name ");
        Console.WriteLine("3 . Product  Quantity");
        Console.WriteLine("4 . Product  Price");
        string? updatechoice = Console.ReadLine();
        string? updatedata = null;
        switch (updatechoice)
        {
            case "1":
                updatedata = "product_id";
                Console.Write("Update the Id of the Product :");
                break;
            case "2":
                updatedata = "product_name";
                Console.Write("Update the Name of the Product : ");
                break;

            case "3":
                updatedata = "product_quantity";
                Console.WriteLine("Update the Quantity of the Product :");
                break;

            case "4":
                updatedata = "product_price";
                Console.WriteLine("Update the Quantity of the Product :");
                break;
        }

        string? updatevalue = Console.ReadLine();
        Console.Write("\nEnter the ID : ");
        int id = Convert.ToInt32(Console.ReadLine());
        try
        {
            conn.Open();
            string insertQuery = $"UPDATE product SET {updatedata}='{updatevalue}' where product_id='{id}'";
            MySqlCommand cmd = new MySqlCommand(insertQuery, conn);
            MySqlDataReader rdr = cmd.ExecuteReader();
            conn.Close();

        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
        Console.WriteLine("Record updated successfully");
    }
}