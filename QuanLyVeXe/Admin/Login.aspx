<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ĐĂNG NHẬP TÀI KHOẢN</title>
    <link href="../css/login/stylelog.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="layer01_holder">
          <div id="left"></div>
          <div id="center"></div>
          <div id="right"></div>
        </div>

        <div id="layer02_holder">
          <div id="left"></div>
          <div id="center"></div>
          <div id="right"></div>
        </div>

        <div id="layer03_holder">
          <div id="left"></div>
          <div id="center">
              <table width="110%" border="0" cellspacing="0" cellpadding="0">

              <tr>
               <td><asp:Login ID="LoginUser" runat="server" EnableViewState="false" RenderOuterTable="false" onloggedin="LoginUser_LoggedIn">
                <LayoutTemplate>
                    <asp:ValidationSummary ID="ValidationSummaryLoginUser" ValidationGroup="LoginUserValidationGroup" ShowSummary="false" runat="server" />
                        <fieldset>
                            <tr>
                               <td> <asp:Label ID="UserNameLabel" runat="server"  AssociatedControlID="UserName">Username: </asp:Label></td>
                               <td> <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" 
                                    runat="server" ErrorMessage="*" 
                                    ControlToValidate="UserName" CssClass="BatError" 
                                    ToolTip="Username in request" ValidationGroup="LoginUserValidationGroup"></asp:RequiredFieldValidator> 
                                </td>
                           </tr>
                        
                            <tr>
                                <td><asp:Label ID="lbPassword" AssociatedControlID="Password" runat="server" >Password : </asp:Label></td>
                               <td>  <asp:TextBox ID="Password" TextMode="Password" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RegularExpressionValidatorPassword" 
                                    runat="server" ErrorMessage="*" 
                                    ControlToValidate="Password" CssClass="BatError" 
                                    ToolTip="Password in request" ValidationGroup="LoginUserValidationGroup"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><asp:CheckBox ID="RememberMe" runat="server" />
                                    <asp:Label ID="RememberMeLabel" runat="server" AssociatedControlID="RememberMe">Duy trì đăng nhập</asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td><asp:Literal ID="LiteralText" runat="server"></asp:Literal></td>
                            </tr>
                            <br />
                            <tr> 
                                <td></td>
                                <td style="padding-left: 50px;">  
                                    <asp:Button ID="LoginButton" runat="server" Text="Đăng nhập" CommandName="Login" ValidationGroup="LoginUserValidationGroup" />
                                </td>
                            </tr>
                        </fieldset>
                </LayoutTemplate>            
              </asp:Login>
              </td>
             </tr>
              </table>
         </div>

        
        <div id="right"></div>

        <div id="layer04_holder">
          <div id="left"></div>
          <div id="center"> </div>
          <div id="right"></div>
        </div>
        </div>
    </form>
</body>
</html>
