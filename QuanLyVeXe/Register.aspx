<%@ Page Title="" Language="C#" MasterPageFile="~/Skin.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

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
                            ĐĂNG KÝ TÀI KHOẢN</h4>
                    </div>

                    <ul class="columns-2 clearfix">
                        <li class="col2">
                            <div class="testimonial-wrapper clearfix">
                                
                                

                                <table border="0" width="100%">
                                      <tr>
                                            <td class="style1">  
                                                   <asp:Label ID="Label1" runat="server" Text="Tên đăng nhập: "></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtTenDangNhap" runat="server" Width="247px"></asp:TextBox>
                                            </td>
                                       </tr>

                                       <tr>
                                            <td class="style1">  
                                                   <asp:Label ID="Label2" runat="server" Text="Mật khẩu: "></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtMatKhau" runat="server" Width="247px" TextMode="Password"></asp:TextBox>
                                            </td>
                                       </tr>

                                       <tr>
                                            <td class="style1">  
                                                   <asp:Label ID="Label3" runat="server" Text="Nhập lại MK: "></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtNhapLaiMK" runat="server" Width="247px" TextMode="Password"></asp:TextBox>
                                            </td>
                                       </tr>
                                       
                                       <tr>
                                            <td class="style1">  
                                                   <asp:Label ID="Label4" runat="server" Text="Họ và tên: "></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtHoVaTen" runat="server" Width="247px"></asp:TextBox>
                                            </td>
                                       </tr>

                                        <tr>
                                            <td class="style1">  
                                                   <asp:Label ID="Label5" runat="server" Text="Địa chỉ: "></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtDiaChi" runat="server" Width="247px"></asp:TextBox>
                                            </td>
                                       </tr>

                                        <tr>
                                            <td class="style1">  
                                                   <asp:Label ID="Label6" runat="server" Text="Số ĐT: "></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtSoDienThoai" runat="server" Width="247px"></asp:TextBox>
                                            </td>
                                       </tr>

                                    
                                     <tr>
                                            <td class="style1">  
                                                   <asp:Label ID="Label7" runat="server" Text="Email: "></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtEmail" runat="server" Width="247px"></asp:TextBox>
                                            </td>
                                       </tr>


                                    <tr>
                                        <td class="style1">Nhập mã: </td>
                                        <td>
                                            <cc1:CaptchaControl ID="CaptchaControlDangKyVeXe" runat="server" CaptchaBackgroundNoise="Medium" CaptchaLineNoise="Low" />
                                            <asp:TextBox ID="txtCapchaDangKy" runat="server" Width="177px"></asp:TextBox>
                                            <asp:Label ID="lbResult" runat="server" Text="" Font-Bold="True" 
                                                ForeColor="#FF3300"></asp:Label>
                                        </td>
                                    </tr>

                                       <tr>
                                            <td>
                                            </td>
                                            <td style="padding-left:90px;">
                                                <asp:Button ID="btDangKyTaiKhoan" runat="server" Text="Đăng ký" 
                                                    BackColor="#33CCFF" BorderStyle="Dotted" Width="92px" />
                                            </td>
                                       </tr>

                                </table>
                         
                       
                            </div>
                        </li>
              
                    </ul>    
        </div><!-- END .section -->
</asp:Content>

