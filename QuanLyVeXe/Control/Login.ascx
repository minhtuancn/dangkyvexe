<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Login.ascx.cs" Inherits="Control_Login" %>

 <style type="text/css">
        .style1
        {
           float: right;
           text-align: center;
           padding-right: 10px;
        }
        .Baterror
        {
            color:Red;
         }
        .container
        {
            width: 200px;
        }
        
    </style>
  <asp:Login ID="LoginUser" runat="server" EnableViewState="False"  RenderOuterTable="False">
                                <LayoutTemplate>
                                    <span>
                                        <asp:Literal ID="LiteralText" runat="server"></asp:Literal>
                                    </span>
                                    <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="Baterror"
                                        ValidationGroup="LoginUserValidationGroup" ShowSummary="false" />
                                    
                                        <table border="0" style="width: 200px; line-height: 2px;">
                                            <caption>
                                                <fieldset>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" 
                                                                Font-Bold="True">Username:</asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="UserName" runat="server" Width="120px"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                                ControlToValidate="UserName" CssClass="Baterror" 
                                                                ErrorMessage="Tên người dùng." ToolTip="Nhập tên đăng nhập." 
                                                                ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password"  Font-Bold="True">Password:</asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="Password" runat="server"
                                                                TextMode="Password" Width="120px"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                                ControlToValidate="Password" CssClass="Baterror"
                                                                ErrorMessage="Mật khẩu người dùng." ToolTip="Password is required." 
                                                                ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td></td>
                                                        <td>
                                                            <asp:CheckBox ID="RememberMe" runat="server" />
                                                            <asp:Label ID="RememberMeLabel" runat="server" AssociatedControlID="RememberMe" Font-Size="Small">Duy trì đăng nhập</asp:Label></td>
                                                    </tr>
                                                </fieldset>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td style="padding-left: 35px;">
                                                        <asp:Button ID="btDangNhap" runat="server" BorderStyle="Dashed" 
                                                            CommandName="DangNhap" Font-Bold="True" ForeColor="Black" Text="Đăng nhập" 
                                                            ValidationGroup="LoginUserValidationGroup"/>
                                                    </td>
                                                </tr>
                                            </caption>
                                        </table>
                                </LayoutTemplate>
                            </asp:Login>
      

