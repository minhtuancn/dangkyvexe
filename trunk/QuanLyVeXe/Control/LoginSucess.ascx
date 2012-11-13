<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LoginSucess.ascx.cs" Inherits="Control_LoginSucess" %>
 <style type="text/css">
        .style1
        {
           float: right;
           text-align: center;
           padding-right: 10px;
        }
    </style>

<table border="1" style="width: 200px">
    <tr>
        <td  class="style1">
            <asp:Label ID="Label1" runat="server">Hello:bum</asp:Label>
        </td>
        <td>
             <asp:HyperLink ID="HyperLinkLogout" runat="server">Logout</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
             <asp:HyperLink ID="HyperLinkDanhSachVeDangKy" runat="server" NavigateUrl="~/Listvexe.aspx" Target="_blank"> >>Danh sách vé xe</asp:HyperLink>
        </td>
    </tr>
</table>