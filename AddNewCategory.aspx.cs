using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddNewCategory : System.Web.UI.Page
{
    ProjectDatabaseEntities db = new ProjectDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {

        Category cat = new Category();

        
        cat.CName = txtCName.Text;
       
        db.Categories.Add(cat);
        db.SaveChanges();

        Literal1.Text = "Insert New Category Successfully...";
    }
}