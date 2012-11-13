<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="VeXe.aspx.cs" Inherits="Admin_VeXe" %>

<%@ Register src="../Control/Pager.ascx" tagname="Pager" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
      <div>
            <p style="text-align:center; font-weight: bold; font-size: 150%; color: White;">QUẢN LÝ VÉ XE</p>
            <hr />
             <p>
                 &nbsp;<asp:Panel ID="PanelChuNang" runat="server">
                    <asp:Button ID="btThem" runat="server" Text="Add new" Height="32px" 
                        Width="114px" onclick="btThem_Click" />
                    <asp:Button ID="btXoa" runat="server" Text="Delete select" Height="32px" Width="113px" 
                        onclick="btXoa_Click" OnClientClick="return confirm('Are you renmove it slected?');" />
                    <asp:Button ID="btTimKiem" runat="server" Text="Search" Height="33px" 
                        Width="108px" onclick="btTimKiem_Click" />
                    <asp:Button ID="btThongKe" runat="server" Text="Thống kê" Height="33px" 
                        Width="111px" />
                    <asp:Button ID="btInAn" runat="server" Text="In danh sách" Height="31px" />
                    <asp:Label ID="lbThongKe" runat="server" Text="9" CssClass="labelThongKe"></asp:Label>
                </asp:Panel>
                  <p>&nbsp;</p>
                  <asp:Panel ID="PanelNhapGiaTriTimKiem" runat="server" Visible="false">
                  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                  <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

                  <asp:Button ID="Button1" runat="server" Text="Tìm kiếm" />
              </asp:Panel>
            </p>
    
             <p>
            <asp:Repeater ID="RepeaterVeXe" runat="server" 
                     onitemcommand="RepeaterVeXe_ItemCommand" >
                <HeaderTemplate>
                    <table class="list">
                    <tr>
                        <th class="cid"><input type="checkbox" id="checkBoxAll"></th>
                        <th>Họ tên</th>
                        <th>Giới tính </th>
                        <th>Tuổi</th>
                        <th>Điạ chỉ</th>
                        <th>Số ĐT</th>
                        <th>Ngày xuất bến</th>
                        <th>Loại xe</th>
                        <th>Status VX</th>
                        <th>ID</th>
                    </tr>
                </HeaderTemplate>

                <ItemTemplate>
                     <tr class='<%#Container.ItemIndex % 2==0?"white":"xam"%>'>
                        <td><input type="checkbox" name="Id" value='<%#Eval("MaVe")%>'></td>
                        <td><a href='EditVeXe.aspx?Id=<%#Eval("MaVe")%>'><%#Eval("HoTen")%></a></td>
                        <td><%#Eval("GioiTinh")%></td>
                        <td><%#Eval("Tuoi")%></td>
                        <td><%#Eval("DiaChi")%>i</td>
                        <td><%#Eval("SoDT")%></td>
                        <td><%#Eval("NgayXuatBen")%></td>
                        <td style="text-align:center;"><%#Eval("LoaiXe")%></td>
                        <td>
                        
                             <asp:LinkButton ID="LinkButton1" runat="server" CommandName="VeXeUpdateStatus" CommandArgument='<%#Eval("MaVe")+"_"+Eval("TrangThaiVeXe")%>'  BorderStyle="None" CssClass='<%#Eval("TrangThaiVeXe").ToString()=="False"?"cross":"tick" %>'></asp:LinkButton>
                        </td>

                        <td style="text-align:center"><%#Eval("MaVe") %></td>
                    </tr>
                </ItemTemplate>

                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </p>
        <p>
            &nbsp;<uc1:Pager ID="PagerButtonVeXe" runat="server" />
      </div>
    
</asp:Content>

