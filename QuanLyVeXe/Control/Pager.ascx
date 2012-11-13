<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Pager.ascx.cs" Inherits="Control_Pager" %>
<div class="pager">
 Page:
    <asp:Label ID="lblCurrentPage" runat="server" Font-Bold="True"></asp:Label>
    <asp:Label ID="Label1" runat="server" Text="of" Font-Bold="True"></asp:Label>
    <asp:Label ID="lblHowManyPages" runat="server" Font-Bold="True"></asp:Label>
    <hr />
    <asp:HyperLink ID="HyperLinkPrevious" runat="server">Previous</asp:HyperLink>
    <asp:Repeater ID="RepeaterPages" runat="server">
        <ItemTemplate>
            <asp:HyperLink ID="HyperLinkPages" runat="server" Text='<%#Eval("Page")%>' NavigateUrl='<%#Eval("Url")%>' CssClass='<%#Eval("Url")%>' ForeColor="#003300" Font-Size="Larger"></asp:HyperLink>
        </ItemTemplate>
    </asp:Repeater>
    <asp:HyperLink ID="HyperLinkNext" runat="server">Next</asp:HyperLink>
   
</div>