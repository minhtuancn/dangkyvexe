<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Login.ascx.cs" Inherits="Control_Login" %>

 <style type="text/css">
        .style1
        {
           float: right;
           text-align: center;
           padding-right: 10px;
        }
    </style>
<table border="0" style="width: 200px">
       <tr>
            <td class="style1">
                <asp:Label ID="Label1" runat="server" Text="Username: " Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTenDangNhap" runat="server" Width="120px"></asp:TextBox>
            </td>
       </tr>

         <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Password: " Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMatKhau" runat="server" Width="120px" TextMode="Password"></asp:TextBox>
            </td>
       </tr>

      
       <tr>
            <td>
            </td>
            <td style="padding-left: 35px;">
                <asp:Button ID="btDangNhap" runat="server" Text="Đăng nhập" 
                    BorderStyle="Dashed" Font-Bold="True" ForeColor="Black" />    
            </td>
       </tr>



</table>