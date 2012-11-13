using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

public partial class Admin_Acountkhachhang : System.Web.UI.Page
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
        int howManyPages = 0;
        string page = Request.QueryString["Page"] ?? "1";
        string firstPageUrl = Link.ToTaiKhoanKH();
        string pageUrl = Link.ToTaiKhoanKH("{0}");
        RepeaterAcountKhachHang.DataSource = TaiKhoanKhachHang.Paging(page, out howManyPages);
        RepeaterAcountKhachHang.DataBind();
        PagerButton.ShowPage(int.Parse(page), howManyPages, firstPageUrl, pageUrl, true);
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
        if(stringId!="")
        {
            foreach (string item in stringId.Split(','))
            {
                TaiKhoanKhachHang.Delete(item);
                LoadControl();
            }
        }
    }
    protected void btThem_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditAcountKhachHang.aspx");
    }
}