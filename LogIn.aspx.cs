using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LogIn : System.Web.UI.Page
{
    ProjectDatabaseEntities db = new ProjectDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   
    protected void btnLogIn_Click(object sender, EventArgs e)
    {
        var data = db.tblUsers.Where(d => d.uEmail == txtUserName.Text && d.uPass == txtPassword.Text).FirstOrDefault();

        if (data !=null)
        {
            if (data.rId==1)
            {
                Session["un"] = data.uName;
                Session["role"] = data.tblRole.rName;
                Response.Redirect("/Admin/Default.aspx");
            }
            else if (data.rId == 2)
            {
                Session["un"] = data.uName;
                Session["role"] = data.tblRole.rName;
                Response.Redirect("~/Default.aspx");
            }
            else if (data.rId == 3)
            {
                Session["un"] = data.uName;
                Session["role"] = data.tblRole.rName;
                Response.Redirect("~/Default.aspx");
            }
        }
        else
        {
            Literal1.Text = "Invalid User !!!";
        }
    }
}