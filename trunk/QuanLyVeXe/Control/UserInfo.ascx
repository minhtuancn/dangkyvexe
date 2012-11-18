<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserInfo.ascx.cs" Inherits="Control_UserInfo" %>
<asp:LoginView ID="LoginView1" runat="server">
    <AnonymousTemplate>
        <div>
            <center>
                <h3 style="font-weight:bold">Welcome!</h3>
                <p>
                    <asp:HyperLink ID="HyperLinkLoginStatus" runat="server" Text="Đăng nhập" NavigateUrl="~/Dangnhap.aspx"></asp:HyperLink>
                    <asp:Label ID="Label1" runat="server" Text="or"></asp:Label>
                    <asp:HyperLink ID="HyperLinkRegister" runat="server" Text="Đăng ký" NavigateUrl="~/Register.aspx"></asp:HyperLink>
                </p>
            </center>
        </div>
    </AnonymousTemplate>

    <RoleGroups>
            <asp:RoleGroup Roles="Administrators">
                <ContentTemplate>
                    <center>
                        <h3>
                            <asp:LoginName ID="LoginName1" runat="server" FormatString="Hello: {0}" />
                        </h3>
                        <p>
                            <asp:HyperLink ID="HyperLinkLogout" runat="server" Text="Đăng xuất" NavigateUrl="~/Dangnhap.aspx" ForeColor="Black"></asp:HyperLink>
                            <asp:Label ID="Label2" runat="server" Text="|" ForeColor="Black"></asp:Label>
                            <asp:HyperLink ID="HyperLinkAdmin" runat="server" Text="Adminstrator" NavigateUrl="~/Admin" ForeColor="Black"></asp:HyperLink>
                        </p>
                        <br />
                        <p>
                            <asp:HyperLink ID="HyperLinkListVeXe" runat="server" Text=">>Danh sách vé xe đăng ký" NavigateUrl="~/Listvexe.aspx" ForeColor="Black"></asp:HyperLink>
                        </p>
                    </center>
                </ContentTemplate>
            </asp:RoleGroup>

            <asp:RoleGroup Roles="TaiKhoanKH">
                <ContentTemplate>
                    <center>
                    <h3><asp:LoginName ID="LoginName1" runat="server" FormatString="Hello: {0}" /></h3>
                    <p>
                        <asp:HyperLink ID="HyperLinkLogout" runat="server" Text="Đăng xuất" NavigateUrl="~/Dangnhap.aspx" ForeColor="Black"></asp:HyperLink>
                        <asp:Label ID="Label3" runat="server" Text="|" ForeColor="Black"></asp:Label>
                        <asp:HyperLink ID="HyperLinkListVeXe" runat="server" Text="Danh sách vé xe" NavigateUrl="~/Listvexe.aspx" ForeColor="Black"></asp:HyperLink>
                    </p>
                    </center>
                </ContentTemplate>
            </asp:RoleGroup>
    </RoleGroups>
</asp:LoginView>
