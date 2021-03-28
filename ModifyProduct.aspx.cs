using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ModifyProduct : System.Web.UI.Page
{
    //Input   using System.Data.SqlClient;
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\C#\Project__Lesson\Project_03(DemoWebSite)\App_Data\ProjectDatabase.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("SELECT * FROM Purchase WHERE PurId=@id", con);
        cmd.Parameters.AddWithValue("@id", txtPurId.Text);



        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            txtProductID.Text = dr.GetValue(1).ToString();
            txtProductName.Text = dr.GetValue(2).ToString();
            txtPrice.Text = dr.GetValue(3).ToString();
            txtQuantity.Text = dr.GetValue(4).ToString();
            txtDOP.Text = dr.GetValue(5).ToString();
        }
        else
        {
            txtProductID.Text = "";
            txtProductName.Text = "";
            txtPrice.Text = "";
            txtQuantity.Text = "";
            txtDOP.Text = "";
            Literal1.Text="Data Not Found";


        }
        con.Close();
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("update Purchase set ProductId=@a,PName=@b,Price=@c,Quantity=@d,DOP=@e where PurId=@id", con);
        cmd.Parameters.AddWithValue("@id", txtProductID.Text);
        cmd.Parameters.AddWithValue("@a", txtProductName.Text);
        cmd.Parameters.AddWithValue("@b", txtPrice.Text);
        cmd.Parameters.AddWithValue("@c", txtQuantity.Text);
        cmd.Parameters.AddWithValue("@d", txtDOP.Text);
        

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        Literal1.Text="Data Update Successfully";
    }
}