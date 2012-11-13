<%@ Page Title="" Language="C#" MasterPageFile="~/Skin.master" AutoEventWireup="true" CodeFile="Lienhe.aspx.cs" Inherits="Lienhe" %>

<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
           float: right;
           text-align: center;
           padding-right: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
        
     <div class="section">
                    <div class="tag-title-wrap clearfix">
                        <h4 class="tag-title">
                            LIÊN HỆ- GÓP Ý</h4>
                    </div>

                    <ul class="columns-2 clearfix">
                        <li class="col2">
                            <div class="testimonial-wrapper clearfix">
                                
                                

                                <table border="0" width="100%">
                                    <tr>
                                            <p style="text-align:center;color: Red;font-weight:bold;"><asp:Label ID="Label4" runat="server" Text="Label">Góp ý và những ý tưởng vàng.</asp:Label></p>
                                            <p style="text-align:center;color: Red;font-weight:bold;"><asp:Label ID="Label7" runat="server" Text="Label">Xin Quý khách vui lòng để lại số điện thoại và địa chỉ.</asp:Label> </p>
                                    </tr>
                                    <tr>
                                        <td class="style1">  
                                               <asp:Label ID="Label1" runat="server" Text="Họ và tên: "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtHoVaTen" runat="server" Width="247px"></asp:TextBox>
                                        
                                        </td>
                                    </tr>
                                      <tr>
                                        <td class="style1"> 
                                            <asp:Label ID="Label2" runat="server" Text="Địa chỉ: "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtDiaChi" runat="server" Width="247px"></asp:TextBox>
                                        </td>
                                    </tr>
                                      <tr>
                                        <td class="style1"> 
                                            <asp:Label ID="Email" runat="server" Text="Email : "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtEmail" runat="server" Width="247px"></asp:TextBox>
                                        </td>
                                    </tr>
                                      <tr>
                                        <td class="style1"> 
                                            <asp:Label ID="Label5" runat="server" Text="Điện thoại: "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtDienThoai" runat="server" Width="247px"></asp:TextBox>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td class="style1"> 
                                            <asp:Label ID="Label3" runat="server" Text="Tiêu đề: "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtTieuDe" runat="server" Width="247px"></asp:TextBox>
                                        </td>
                                    </tr>

                                      <tr>
                                        <td style="padding-bottom: 98px;  float: right;text-align: center; padding-right: 10px;"> 
                                            <asp:Label ID="Label6" runat="server" Text="Nội dung: "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtNoiDung" runat="server" Width="420px" Height="127px" 
                                                TextMode="MultiLine" Font-Size="Larger" ForeColor="#000066"></asp:TextBox>
                                        </td>
                                    </tr>

                                     <tr>
                                        <td>Nhập mã: </td>
                                        <td>
                                            <cc1:CaptchaControl ID="CaptchaControlLienHe" runat="server" CaptchaBackgroundNoise="Medium" CaptchaLineNoise="Low" />
                                            <asp:TextBox ID="txtCapcha" runat="server" Width="177px"></asp:TextBox>
                                            <asp:Label ID="lbResult" runat="server" Text="" Font-Bold="True" 
                                                ForeColor="#FF3300"></asp:Label>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td></td>
                                        <td style="padding-left: 150px;">
                                            <asp:Button ID="btGuiLienHe" runat="server" Text="Gửi liên hệ" 
                                                BackColor="#0066FF" onclick="btGuiLienHe_Click" />
                                        </td>
                                    </tr>
                                </table>
                         
                       
                            </div>
                        </li>
              
                    </ul>    
        </div><!-- END .section -->
</asp:Content>

