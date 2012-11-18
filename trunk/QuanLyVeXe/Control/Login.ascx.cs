using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Control_Login : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!Page.IsPostBack)
        //{
        //    Session["LoginReferrer"] = Request.QueryString["ReturnUrl"] ?? (Page.Request.UrlReferrer != null ? Page.Request.UrlReferrer.ToString() : "~/");
        //}   
    }
    //protected override void OnInit(EventArgs e)
    //{
    //    base.OnInit(e);
    //    LoginUser.LoggedIn+=new EventHandler(LoginUser_LoggedIn);
    //}

    //protected void LoginUser_LoggedIn(object sender, EventArgs e)
    //{
    //    if (Session["LoginReferrer"] != null)
    //    {
    //        Response.Redirect(Session["LoginReferrer"].ToString());
    //    }
    //}

}