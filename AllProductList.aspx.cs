using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AllProductList : System.Web.UI.Page
{
    ProjectDatabaseEntities db = new ProjectDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        //Page Load er somoy GridView er moddhe data dekhanor jonno
        GridView1.DataSource = db.Purchases.ToList();
        GridView1.DataBind();

        ////OR

        //var data = db.Purchases.ToList();
        //GridView1.DataSource = data;
        //GridView1.DataBind();

    }

    protected void btnSortASC_Click(object sender, EventArgs e)
    {
        var data = db.Purchases.OrderBy(d => d.PName).ToList();
        GridView1.DataSource = data;
        GridView1.DataBind();
    }

    protected void btnSortDESC_Click(object sender, EventArgs e)
    {
        var data = db.Purchases.OrderByDescending(d => d.PName).ToList();
        GridView1.DataSource = data;
        GridView1.DataBind();
    }

    protected void btnSelectedFields_Click(object sender, EventArgs e)
    {
        var data = db.Purchases.Select(d => new { d.ProductID, d.PName, d.Price }).ToList();
        GridView2.DataSource = data;
        GridView2.DataBind();

        //SelectedFields er jonno new GridView nite hobe
    }

    protected void btnFieldsALIAS_Click(object sender, EventArgs e)
    {
        var data = db.Purchases.Select(d => new { d.ProductID, ProductName = d.PName, SalesPrice = d.Price }).ToList();  //Kono space,underscore hobe na
        GridView2.DataSource = data;
        GridView2.DataBind();

        //FieldsALIAS er jonno new GridView nite hobe
    }

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        lblTotalProduct.Text = db.Purchases.Count().ToString();
        lblTotalPrice.Text = db.Purchases.Sum(d => d.Price).ToString();
        lblMaxPrice.Text = db.Purchases.Max(d => d.Price).ToString();
        lblMinPrice.Text = db.Purchases.Min(d => d.Price).ToString();
    }

    protected void btnSearchById_Click(object sender, EventArgs e)
    {
      
        int idn = Int32.Parse(txtSearchText.Text);

        var data = db.Purchases.Where(d => d.PurId == idn).ToList();
        GridView1.DataSource = data;
        GridView1.DataBind();
    }

    protected void btnSearchByName_Click(object sender, EventArgs e)
    {
        //string x = txtSearchText.Text;
        //var data = db.Purchases.Where(d => d.PName == x).ToList();

        var data = db.Purchases.Where(d => d.PName == txtSearchText.Text).ToList();
        GridView1.DataSource = data;
        GridView1.DataBind();
    }

    protected void btnSearchLikeName_Click(object sender, EventArgs e)
    {
        var data = db.Purchases.Where(d => d.PName.Contains(txtSearchText.Text)).ToList();
        GridView1.DataSource = data;
        GridView1.DataBind();
    }

    protected void SearchStartByName_Click(object sender, EventArgs e)
    {
        var data = db.Purchases.Where(d => d.PName.StartsWith(txtSearchText.Text)).ToList();
        GridView1.DataSource = data;
        GridView1.DataBind();
    }

    protected void btnSearchByPrice_Click(object sender, EventArgs e)
    {
        int idn = Int32.Parse(txtSearchText.Text);
        var data = db.Purchases.Where(d => d.Price == idn).ToList();
        GridView1.DataSource = data;
        GridView1.DataBind();
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtSearchText.Text = "";  //for TextBox Blank
    }
}