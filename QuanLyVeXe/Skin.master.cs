using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Skin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbSoNguoiTruyCap.Text = "Số người online: " + Application["SoNguoiOnline"].ToString();
    }
}
