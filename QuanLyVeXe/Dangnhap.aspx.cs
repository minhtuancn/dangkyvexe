using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Dangnhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Session["LoginReferrer"] = Request.QueryString["ReturnUrl"] ?? (Page.Request.UrlReferrer != null ? Page.Request.UrlReferrer.ToString() : "~/");
        }
        if (User.Identity.IsAuthenticated)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/");
        }
    }
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        LoginUser.LoggedIn += new EventHandler(LoginUser_LoggedIn);
    }

    void LoginUser_LoggedIn(object sender, EventArgs e)
    {
        if (Session["LoginReferrer"] != null)
        {
            Response.Redirect(Session["LoginReferrer"].ToString());
        }
    }
}