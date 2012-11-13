using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;


public partial class Admin_VeXe : System.Web.UI.Page
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
        string firstPageUrl = Link.ToVeXe();
        string PageUrl = Link.ToVeXe("{0}");
        RepeaterVeXe.DataSource = VeXe.Paging(page, out howManyPage);
        RepeaterVeXe.DataBind();
        PagerButtonVeXe.ShowPage(int.Parse(page), howManyPage, firstPageUrl, PageUrl, true);
    }
   
    

    protected void btTimKiem_Click(object sender, EventArgs e)
    {
        PanelNhapGiaTriTimKiem.Visible = true;
    }
    protected void btThem_Click(object sender, EventArgs e)
    {
        PanelNhapGiaTriTimKiem.Visible = false;
        Response.Redirect("EditVeXe.aspx");

    }
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        btXoa.Click+=new EventHandler(btXoa_Click);
        btThem.Click+=new EventHandler(btThem_Click);
    }

    //Delete checkbox
    protected void btXoa_Click(object sender, EventArgs e)
    {
        string stringId = Request.Form["Id"] ?? "";
        if(stringId!="")
        {
            foreach (string item in stringId.Split(','))
            {
                VeXe.Delete(item);
                LoadControl();
            }
        }
    }

    protected void RepeaterVeXe_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "VeXeUpdateStatus")
        {
            string[] args = e.CommandArgument.ToString().Split('_');
            VeXe.UpdateTrangThaiVeXe(args[0], !Boolean.Parse(args[1]));
            LoadControl();
        }
    }
}