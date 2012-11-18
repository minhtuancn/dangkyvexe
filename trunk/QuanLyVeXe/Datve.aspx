﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Skin.master" AutoEventWireup="true" CodeFile="Datve.aspx.cs" Inherits="Datve" %>

<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
     <style type="text/css">
        .style1
        {
           float: right;
           text-align: center;        
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
     <div class="section">
                    <div class="tag-title-wrap clearfix">
                        <h4 class="tag-title">
                           ĐẶT VÉ</h4>
                    </div>

                    <ul class="columns-2 clearfix">
                        <li class="col2">
                            <div class="testimonial-wrapper clearfix">
                           <table border="0" width="100%">
                                    <tr>
                                            <p style="text-align:center;color: Red;font-weight:bold;"><asp:Label ID="Label4" runat="server" Text="Label">Quý khách vui lòng điền đầy đủ thông tin để đăng ký vé.</asp:Label></p>
                                           
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
                                            <asp:Label ID="Label2" runat="server" Text="Giới tính: "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:RadioButton ID="RadioButtonName" runat="server" Text="Nam" Checked="true" GroupName="gioitinh"/>
                                            <asp:RadioButton ID="RadioButton1" runat="server" Text="Nữ" GroupName="gioitinh"/>
                                        </td>
                                    </tr>
                                      <tr>
                                        <td class="style1"> 
                                            <asp:Label ID="Tuoi" runat="server" Text="Tuổi : "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtTuoi" runat="server" Width="92px"></asp:TextBox>
                                        </td>
                                    </tr>
                                      <tr>
                                        <td class="style1"> 
                                            <asp:Label ID="Label5" runat="server" Text="Điạ chỉ: "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtDiaChi" runat="server" Width="247px"></asp:TextBox>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td class="style1"> 
                                            <asp:Label ID="Label3" runat="server" Text="Số ĐT: "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtSoDT" runat="server" Width="247px"></asp:TextBox>
                                        </td>
                                    </tr>

                                     <tr>
                                        <td class="style1"> 
                                            <asp:Label ID="Label6" runat="server" Text="Tuyến đi: "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownListTuyenDi" runat="server" Width="247px" 
                                                Height="22px">
                                                <asp:ListItem Value="0">Hai Duong</asp:ListItem>
                                                <asp:ListItem Value="1">Ha Noi</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>

                                     
                                    <tr>
                                        <td class="style1"> 
                                            <asp:Label ID="Label7" runat="server" Text="Ngày xuất bến: "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtNgayThangXuatBen" runat="server" Width="247px"></asp:TextBox>
                                        </td>
                                    </tr>

                                      <tr>
                                        <td>
                                            
                                        </td>
                                        <td>
                                            <asp:Label ID="lbDinhDangNgay" runat="server" Text="Định dang ngày:dd\mm\yyyy" 
                                                Font-Size="Smaller" CssClass="label"></asp:Label>
                                        </td>
                                        
                                    </tr>


                                     <tr>
                                        <td class="style1"> 
                                            <asp:Label ID="Label8" runat="server" Text="Loại xe: "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtLoaiXe" runat="server" Width="177px"></asp:TextBox>
                                        </td>
                                    </tr>



                                     <tr>
                                        <td class="style1">
                                            <asp:Label ID="Label9" runat="server" Text="Nhập mã: "></asp:Label>
                                        </td>
                                        <td>
                                        
                                            <cc1:CaptchaControl ID="CaptchaControlDatVe" runat="server" CaptchaBackgroundNoise="Medium" CaptchaLineNoise="Low"/>
                                            <asp:TextBox ID="txtCapchaDangky" runat="server" Width="177px"></asp:TextBox>
                                            <asp:Label ID="lbResult" runat="server" Text="" Font-Bold="True" 
                                                ForeColor="#FF3300"></asp:Label>
                                        </td>
                                        
                                    </tr>

                                    

                                    <tr>
                                        <td></td>
                                        <td style="padding-left:50px;">
                                            <asp:Button ID="btDangKy" runat="server" Text="Đăng ký" BorderStyle="Dashed" 
                                                Font-Bold="True" ForeColor="#000066" />
                                        </td>
                                    </tr>
                                </table>
                       
                            </div>
                        </li>
              
                    </ul>    
        </div><!-- END .section -->
</asp:Content>
