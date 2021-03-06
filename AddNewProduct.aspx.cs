using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddNewProduct : System.Web.UI.Page
{
    ProjectDatabaseEntities db = new ProjectDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        //it's for DropDownList er Category PostBack Hoye repeated jeno na hoi 
        if (!IsPostBack)
        {
            var data = db.Categories.ToList();

            DropDownList1.DataSource = data;
            DropDownList1.DataTextField = "CName";
            DropDownList1.DataValueField = "CId";
            DropDownList1.DataBind(); 
        }
    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        Purchase pur = new Purchase();

        pur.ProductID = txtProductID.Text;
        pur.PName = txtProductName.Text;
        pur.Price = decimal.Parse( txtPrice.Text);
        pur.Quantity = Int32.Parse(txtQuantity.Text);
        pur.DOP = DateTime.Parse(txtDOP.Text);
        pur.CId = Int32.Parse(DropDownList1.SelectedValue.ToString());

        if (FileUpload1.HasFile)
        {
            pur.Picture = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("./Photo/")+FileUpload1.FileName);
            //Literal1.Text = Server.MapPath("./Photo/") + FileUpload1.FileName;
        }

        //for database save
        db.Purchases.Add(pur);
        db.SaveChanges();

        Literal1.Text = "Insert New Product Successfully...";
    }
}