<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ĐĂNG NHẬP TÀI KHOẢN</title>
    <link href="login/stylelog.css" rel="stylesheet" type="text/css" />
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
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td>LOGIN<br /><br /></td>
      </tr>
      <tr>
           <td>
             <asp:Label ID="Label1" runat="server" Text="Username: "></asp:Label>
           </td>
           <td>
             <asp:TextBox ID="txtUserName" runat="server" Width="126px"></asp:TextBox>
           </td>
      </tr>

       <tr>
           <td>
             <asp:Label ID="Label2" runat="server" Text="Password:  "></asp:Label>
           </td>
           <td style="padding-top: 12px">
             <asp:TextBox ID="txtPassword" runat="server" Width="126px" TextMode="Password"></asp:TextBox><br /><br />
           </td>
      </tr>
      <tr>
           <td></td>
           <td style="padding-left: 56px;">
               <asp:Button ID="btLogin" runat="server" Text="Log In" Width="69px"/> 
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

    </form>
</body>
</html>
