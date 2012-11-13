using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

public partial class Admin_Tuyendi : System.Web.UI.Page
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
        string firstPageUrl = Link.ToTuyenDi();
        string PageUrl = Link.ToTuyenDi("{0}");
        RepeaterTuyenDi.DataSource = TuyenDi.Paging(page, out howManyPage);
        RepeaterTuyenDi.DataBind();
        PagerButtonTuyenDi.ShowPage(int.Parse(page), howManyPage, firstPageUrl, PageUrl, true);
    }

    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        btXoa.Click+=new EventHandler(btXoa_Click);
        btThem.Click+=new EventHandler(btThem_Click);
    }
    protected void btXoa_Click(object sender, EventArgs e)
    {
        string stringId = Request.Form["Id"] ?? "";
        if (stringId != "")
        {
            foreach (string item in stringId.Split(','))
            {
                TuyenDi.Delete(item);
                LoadControl();
            }
        }
    }
    protected void btThem_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditTuyenDi.aspx");
    }
}