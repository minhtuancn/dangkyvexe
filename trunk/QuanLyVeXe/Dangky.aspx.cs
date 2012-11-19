using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        CreateUserWizard1.CreatedUser += new EventHandler(CreateUserWizard1_CreatedUser);
    }

    
    void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {
        try
        {
            //Lay user nguoi dung vua dang ky
            string tendangnhap = CreateUserWizard1.UserName;
            //Sau khi nguoi ta dang ky thanh cong thi add tai khoan vao role TaiKhoanKH
            Roles.AddUserToRole(tendangnhap, "TaiKhoanKH");
            FormsAuthentication.SetAuthCookie(tendangnhap, false);
            string continueUrl = CreateUserWizard1.ContinueDestinationPageUrl;
            if (String.IsNullOrEmpty(continueUrl))
            {
                continueUrl += "~/";
            }
            Response.Redirect(continueUrl);
        }
        catch
        {
            //Response.Write("Error: ")
        }
    }
}