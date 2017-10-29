using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    private static string connection;
    static Default3()
    {
        connection = WebConfigurationManager.ConnectionStrings["connection"].ConnectionString;
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void signin(object sender, EventArgs e)
    {
        string uname = tb1.Text;
        string pass = tb2.Text;

        SqlConnection con = new SqlConnection(connection);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM User WHERE uname=@uname ", con);
            cmd.Parameters.AddWithValue("@uname", uname);
            SqlDataReader reader;
            reader = cmd.ExecuteReader();

            //while (reader.Read())
            {
               if((reader["pass"].ToString())==pass)
                {
                    label1.Text = "Correct Credentials";
                    Response.Redirect("Admin.aspx");
                }
               else
                {
                    label1.Text = "Incorrect Credentials";
                }
            }
        }
        catch (Exception err)
        {
        }
        finally
        {
            con.Close();
        }
       
    }
}