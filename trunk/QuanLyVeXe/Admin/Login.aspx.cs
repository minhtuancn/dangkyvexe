using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        LoginUser.LoggedIn+=new EventHandler(LoginUser_LoggedIn);
    }
    protected void LoginUser_LoggedIn(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Default.aspx");
    }
}