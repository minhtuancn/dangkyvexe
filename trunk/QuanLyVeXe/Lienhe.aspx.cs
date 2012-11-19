using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using System.Data.SqlClient;

public partial class Lienhe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //Lay du lieu tu form de them moi or cap nhat
    private LienHe GetData()
    {
        LienHe data = null;
        if (lbMaLH.Text != "")
        {
            data = LienHe.LienHe_Single(lbMaLH.Text);
        }
        else
        {
            data = new LienHe();
        }
        data.HoTen = txtHoVaTen.Text;
        data.DiaChi = txtDiaChi.Text;
        data.Email = txtEmail.Text;
        data.DienThoai = txtDienThoai.Text;
        data.TieuDe = txtTieuDe.Text;
        data.NoiDung = txtNoiDung.Text;
        return data;
    }

    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
       //btGuiLienHe.Click+=new EventHandler(btGuiLienHe_Click);
    }
    protected void btGuiLienHe_Click(object sender, EventArgs e)
    {
        try
        {
            CaptchaControlLienHe.ValidateCaptcha(txtCapcha.Text.Trim());
            if (CaptchaControlLienHe.UserValidated)
            {
                //Thanh cong xuat ra cai label 
                if (Page.IsValid)//If tat ca dATA hop le
                {
                    bool result = false;
                    LienHe data = GetData();
                    result = LienHe.Add(data);
                    lbResultThongBao.Text = result ? "Cảm ơn bạn đã góp ý. Chúc các bạn một ngày may mắn" : "Gửi góp ý không thành công";
                    if (result)
                    {
                        Reset();
                    }
                }
            }
            else
            {
                //that bai
                lbResult.Text = "Nhập sai mã bảo vệ";
            }
        }
        catch (SqlException sql)
        {
            lbResult.Text = ""+sql.Message;
        }
        catch (Exception ex)
        {
            lbResult.Text = "" + ex.Message;
        }

    }
    private void Reset()
    {
        txtHoVaTen.Text = "";
        txtDiaChi.Text = "";
        txtEmail.Text = "";
        txtDienThoai.Text = "";
        txtTieuDe.Text = "";
        txtNoiDung.Text = "";
        txtCapcha.Text = "";
    }
}