using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Control_Pager : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    public void ShowPage(int currentPage, int howManyPages, string firstPageUrl, string pageUrlFormat, bool showPages)
    {
        if (howManyPages > 1)
        {
            this.Visible = true;
            lblCurrentPage.Text = currentPage.ToString();
            lblHowManyPages.Text = howManyPages.ToString();
            if (currentPage == 1)
            {
                HyperLinkPrevious.Enabled = false;// Nghia la neu chi co 1 trang thi khong hien cai lui lai
                HyperLinkPrevious.CssClass = "disable";
            }
            else
            {
                HyperLinkPrevious.NavigateUrl = currentPage == 2 ? firstPageUrl : String.Format(pageUrlFormat, currentPage - 1);
                //Nghia la neu 2 trang thi cai previous se van hien va lui lai so trang
            }
            if (currentPage == howManyPages)
            {
                //Khi so luong trang hien tai = tong so trang thi Next se bi an di
                HyperLinkNext.Enabled = false;
                HyperLinkNext.CssClass = "disable";
            }
            else
            {
                HyperLinkNext.NavigateUrl = String.Format(pageUrlFormat, currentPage + 1);
                //khi so trang cha bang tong so trang da co thi chung ta co the an Next de tang len 1 trang tiep theo
            }
            if (showPages)
            {
                PageUrl[] pages = new PageUrl[howManyPages];// Khai bao 1 mang voi gia tri bang tong so luong Page
                pages[0] = new PageUrl("1", firstPageUrl);// gan vi tri  dau tien la trang 1. Mac dinh la co 1 trang
                for (int i = 2; i <= howManyPages; i++)
                {
                    pages[i - 1] = new PageUrl(i.ToString(), String.Format(pageUrlFormat, i));
                }
                if (currentPage >= 0 && currentPage < howManyPages)// if trang hien tai >=0 va trang hien tai nho hon tong so trang
                {
                    pages[currentPage - 1] = new PageUrl(currentPage.ToString(), "");
                }
                RepeaterPages.DataSource = pages;
                RepeaterPages.DataBind();
            }
        }
        else
        {
            this.Visible = false;
        }
    }
}

public class PageUrl
{
    private string _Page;

    public string Page
    {
        get { return _Page; }
    }
    private string _Url;

    public string Url
    {
        get { return _Url; }
    }
    public PageUrl(string page, string url)
    {
        this._Page = page;
        this._Url = url;
    }
}