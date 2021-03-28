using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegisterPage : System.Web.UI.Page
{
    ProjectDatabaseEntities db = new ProjectDatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   

    protected void btnRegister_Click(object sender, EventArgs e)
    {
       
        tblUser reg = new tblUser();

        reg.uName = txtUserName.Text;
        reg.uEmail = txtEmail.Text;
        reg.uPass = txtPassword.Text;
        reg.rId = 2;

        db.tblUsers.Add(reg);
        db.SaveChanges();

        Literal1.Text = "Insert Register Successfully...";
    }
}