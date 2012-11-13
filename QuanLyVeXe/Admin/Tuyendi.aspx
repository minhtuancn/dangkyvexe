<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Tuyendi.aspx.cs" Inherits="Admin_Tuyendi" %>

<%@ Register src="../Control/Pager.ascx" tagname="Pager" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        <p style="text-align:center; font-weight: bold; font-size: 150%; color: White;">QUẢN LÝ TUYẾN ĐI</p>
        <hr />
         <p>
             &nbsp;<asp:Panel ID="PanelChucNang" runat="server">
                <asp:Button ID="btThem" runat="server" Text="Add new " Width="118px" 
                    Height="30px" onclick="btThem_Click" />
                <asp:Button ID="btXoa" runat="server" Text="Delete select" Width="112px" 
                    Height="30px" onclick="btXoa_Click" OnClientClick="return confirm('Are you renmove it slected?');" />
                 <asp:Button ID="btTimKiem" runat="server" Text="Tìm kiếm" Width="112px"
                    Height="30px" />
                <asp:Button ID="btThongKe" runat="server" Text="Thống kê" Width="112px"
                    Height="29px" />

                <asp:Button ID="btInAn" runat="server" Text="In ấn" Width="112px"
                    Height="30px" />
               <asp:Label ID="lbThongKe" runat="server" Text="9" CssClass="labelThongKe"></asp:Label>
            </asp:Panel>

        </p>

        

        <p>
            <asp:Repeater ID="RepeaterTuyenDi" runat="server" >
                <HeaderTemplate>
                    <table class="list">
                    <tr>
                        <th class="cid"><input type="checkbox" id="checkBoxAll"></th>
                        <th>Bến đi</th>
                        <th>Bến đến </th>
                        <th>Loại xe</th>
                        <th>Thời gian</th>
                        <th>Giá vé</th>
                        <th>Chỗ trống</th>
                        <th>Phụ thu</th>
                        <th>Ghi chú</th>
                        <th>Phân biệt tuyến</th>
                        <th>ID</th>
                    </tr>
                </HeaderTemplate>

                <ItemTemplate>
                      <tr class='<%#Container.ItemIndex % 2==0?"white":"xam"%>'>
                        <td><input type="checkbox" name="Id" value='<%#Eval("MaTuyen")%>'></td>
                        <td><a href='EditTuyenDi.aspx?Id=<%#Eval("MaTuyen")%>'><%#Eval("BenDi")%></a></td>
                        <td><a href='EditTuyenDi.aspx?Id=<%#Eval("MaTuyen")%>'><%#Eval("BenDen")%></a></td>
                        <td><%#Eval("LoaiXe")%></td>
                        <td><%#Eval("ThoiGian")%></td>
                        <td><%#Eval("GiaVe")%></td>
                        <td><%#Eval("ChoTrong")%></td>
                        <td><%#Eval("PhuThu")%></td>
                        <td><%#Eval("GhiChu")%></td>
                        <td><%#Eval("PhanBietTuyen")%></td>
                        <td style="text-align:center"><%#Eval("MaTuyen")%></td>
                    </tr>
                </ItemTemplate>

                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </p>
            <uc1:Pager ID="PagerButtonTuyenDi" runat="server" />
        <p>
            
        </p>
    </div>
</asp:Content>

