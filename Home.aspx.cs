using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.UI.DataVisualization.Charting;

public partial class Default3 : System.Web.UI.Page
{
    private static string connection;
    static Default3() {
        connection = WebConfigurationManager.ConnectionStrings["connection"].ConnectionString;
    }




    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            SqlConnection con = new SqlConnection(connection);
            List<string> li = new List<string>();
            List<string> price = new List<string>();
            List<string> quant = new List<string>();

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT TOP 4 * FROM billing ORDER BY dish_order_count DESC ", con);
                SqlDataReader reader;
                reader = cmd.ExecuteReader();
    
                while (reader.Read())
                {
                    li.Add(reader["dish_name"].ToString());
                    price.Add(reader["dish_price"].ToString());
                    quant.Add(reader["dish_order_count"].ToString());
                }
            }
            catch (Exception err) {
            }
            finally
            {
                con.Close();
            }
            label1.Text = li[0].ToString();
            label2.Text = li[1].ToString();
            label3.Text = li[2].ToString();
           // label4.Text = li[3].ToString();

            price1.Text = price[0].ToString();
            price2.Text = price[1].ToString();
            price3.Text = price[2].ToString();
           // price4.Text = price[3].ToString();


            quant1.Text = quant[0];
            quant2.Text = quant[1];
            quant3.Text = quant[2];
            // quant4.Text = quant[3];


            Bindchart();

        }
    }

    private void Bindchart()
    {
        SqlConnection con = new SqlConnection(connection);
        SqlCommand com = new SqlCommand("SELECT item_name, item_order_count FROM Inventory ", con);
       // com.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter da = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        da.Fill(ds);

        DataTable ChartData = ds.Tables[0];

        //storing total rows count to loop on each Record  
        string[] XPointMember = new string[ChartData.Rows.Count];
        int[] YPointMember = new int[ChartData.Rows.Count];

        for (int count = 0; count < ChartData.Rows.Count; count++)
        {
            //storing Values for X axis  
            XPointMember[count] = ChartData.Rows[count]["item_name"].ToString();
            //storing values for Y Axis  
            YPointMember[count] = Convert.ToInt32(ChartData.Rows[count]["item_order_count"]);


        }
        //binding chart control  
        Chart1.Series[0].Points.DataBindXY(XPointMember, YPointMember);

        //Setting width of line  
        Chart1.Series[0].BorderWidth = 10;
        //setting Chart type   
        Chart1.Series[0].ChartType = SeriesChartType.Column;
        Chart1.Series[0].ChartType = SeriesChartType.StackedColumn;  

        //Hide or show chart back GridLines  
        Chart1.ChartAreas["ChartArea1"].AxisX.MajorGrid.Enabled = false;
        Chart1.ChartAreas["ChartArea1"].AxisY.MajorGrid.Enabled = false;


        //Enabled 3D  
        Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;  
        con.Close();

    }
}