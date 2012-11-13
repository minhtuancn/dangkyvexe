using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

public partial class Lienhe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //Lay du lieu tu form de them moi or cap nhat
    //private Lienhe GetData()
    //{
    //    Lienhe data = null;
    //}
    protected void btGuiLienHe_Click(object sender, EventArgs e)
    {

        CaptchaControlLienHe.ValidateCaptcha(txtCapcha.Text.Trim());
        if (CaptchaControlLienHe.UserValidated)
        {
            //Thanh cong xuat ra cai label 
            lbResult.Text = "";
        }
        else
        { 
            //that bai
            lbResult.Text = "Nhập sai mã bảo vệ";
        }
    }
}