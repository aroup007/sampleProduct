using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ProductList : System.Web.UI.Page
{

    ProjectDatabaseEntities db = new ProjectDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = db.Purchases.ToList();
        GridView1.DataBind();

        if (!IsPostBack)
        {
            var data = db.Categories.ToList();

            DropDownList1.DataSource = data;
            DropDownList1.DataTextField = "CName";
            DropDownList1.DataValueField = "CId";
            DropDownList1.DataBind();
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int index = GridView1.SelectedIndex;
        
       GridViewRow selectedrow=  GridView1.Rows[index];
        Session["m"] = selectedrow.Cells[0].Text;
        int id = Int32.Parse(selectedrow.Cells[0].Text);

        var srch = db.Purchases.Where(d => d.PurId == id).FirstOrDefault();

        txtId.Text = selectedrow.Cells[1].Text;
        txtPName.Text = selectedrow.Cells[2].Text;
        txtPrice.Text = selectedrow.Cells[3].Text;
        txtQuantity.Text = selectedrow.Cells[4].Text;
        txtDOP.Text = selectedrow.Cells[5].Text;
        Image1.ImageUrl = "../Photo/" + srch.Picture;
        DropDownList1.SelectedValue = srch.CId.ToString(); //selectedrow.Cells[7].Text;

      

    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        int id = Int32.Parse(Session["m"].ToString());
        var srch =db.Purchases.Where(d => d.PurId == id).FirstOrDefault();

        srch.PName = txtPName.Text;
        srch.Price =decimal.Parse( txtPrice.Text);

        db.SaveChanges();
        GridView1.DataSource = db.Purchases.ToList();
        GridView1.DataBind();
    }
}