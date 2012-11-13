using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
public partial class Admin_Lienhe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadControl();
        }

    }
    private void LoadControl()
    {
        int howManyPage = 0;
        string page = Request.QueryString["Page"] ?? "1";
        string firstPageUrl = Link.ToLienHe();
        string pageUrl = Link.ToLienHe("{0}");
        RepeaterLienHe.DataSource = LienHe.Pagings(page,out howManyPage);
        RepeaterLienHe.DataBind();
        PagerButtonLienHe.ShowPage(int.Parse(page), howManyPage,firstPageUrl,pageUrl, true);
    }

    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        btXoaLienHe.Click+=new EventHandler(btXoaLienHe_Click);
    }
    protected void btXoaLienHe_Click(object sender, EventArgs e)
    {
        string stringID = Request.Form["Id"] ?? "";
        if (stringID != "")
        {
            foreach (string item in stringID.Split(','))
            {
                LienHe.Delete(item);
                LoadControl();
            }
        }
    }
}