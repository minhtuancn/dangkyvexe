<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Acountkhachhang.aspx.cs" Inherits="Admin_Acountkhachhang" %>

<%@ Register src="../Control/Pager.ascx" tagname="Pager" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        <p style="text-align:center; font-weight: bold; font-size: 150%; color: White;">QUẢN LÝ TÀI KHOẢN KHÁCH HÀNG</p>
        <hr />
        <p>
            &nbsp;<asp:Panel ID="PanelTaiKhoanKhachHang" runat="server">
                <asp:Button ID="btThem" runat="server" Text="Add new" Height="32px" 
                        Width="114px" onclick="btThem_Click"/>
                <asp:Button ID="btXoa" runat="server" Text="Delet select " Width="101px" 
                    Height="31px" onclick="btXoa_Click" OnClientClick="return confirm('Are you renmove it slected?');"/>
                <asp:Button ID="Button2" runat="server" Text="Search " Width="101px" Height="31px" />
                <asp:Button ID="Button3" runat="server" Text="Thống kê " Width="101px" Height="31px" />
                <asp:Button ID="Button4" runat="server" Text="In danh sách " Width="101px" Height="31px" />
                 <asp:Label ID="lbThongKe" runat="server" Text="9" CssClass="labelThongKe"></asp:Label>
            </asp:Panel>
        </p>
         
         <p>
            <asp:Repeater ID="RepeaterAcountKhachHang" runat="server">
                <HeaderTemplate>
                    <table class="list">
                    <tr>
                        <th class="cid"><input type="checkbox" id="checkBoxAll"></th>
                        <th>Tên đăng nhập</th>
                        <th>Mật khẩu </th>
                        <th>Họ tên KH</th>
                        <th>Địa chỉ</th>
                        <th>Số ĐT</th>
                        <th>Email</th>
                        <th>ID</th>
                    </tr>
                </HeaderTemplate>

                <ItemTemplate>
                      <tr>
                        <tr class='<%#Container.ItemIndex % 2==0?"white":"xam"%>'>
                        <td><input type="checkbox" name="Id" value='<%#Eval("MaTK")%>'></td>
                       <!-- <td><a href='<%# DAL.Link.ToTaiKhoanKhachHangID(Eval("MaTK").ToString()) %>'><%#HttpUtility.HtmlEncode(Eval("TenDangNhap").ToString())%></a></td>-->
                        <td><a href='EditAcountKhachHang.aspx?Id=<%#Eval("MaTK") %>'><%#Eval("TenDangNhap")%></a></td>
                        <td><%#Eval("MatKhau")%></td>
                        <td><%#Eval("HoTenKH")%></td>
                        <td><%#Eval("DiaChi")%>i</td>
                        <td><%#Eval("SoDienThoai")%></td>
                        <td><%#Eval("Email")%></td>
                        <td><%#Eval("MaTK")%></td>
                    </tr>
                </ItemTemplate>

                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
                <uc1:Pager ID="PagerButton" runat="server" />

    </div>
  
</asp:Content>

