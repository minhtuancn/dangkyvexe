<%@ Page Title="" Language="C#" MasterPageFile="~/Skin.master" AutoEventWireup="true"
    CodeFile="Dangnhap.aspx.cs" Inherits="Dangnhap" %>

<%@ Register Src="Control/Login.ascx" TagName="Login" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        .style1
        {
           float: right;
           text-align: center;
           padding-right: 10px;
        }
        .Baterror
        {
            color:Red;
         }
        .container
        {
            width: 200px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="section">
        <div class="tag-title-wrap clearfix">
            <h4 class="tag-title">
                ĐĂNG NHẬP TÀI KHOẢN</h4>
        </div>
        <ul class="columns-2 clearfix">
            <li class="col2">
                <div class="testimonial-wrapper clearfix">
                    <center>
                       <asp:Login ID="LoginUser" runat="server" EnableViewState="False" RenderOuterTable="False">
                                <LayoutTemplate>
                                    <span>
                                        <asp:Literal ID="LiteralText" runat="server"></asp:Literal>
                                    </span>
                                    <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="Baterror"
                                        ValidationGroup="LoginUserValidationGroup" ShowSummary="false" />
                                    
                                        <table border="0" style="width: 200px; line-height: 2px;">
                                            <caption>
                                                <fieldset>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" 
                                                                Font-Bold="True">Username:</asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="UserName" runat="server" Width="120px"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                                ControlToValidate="UserName" CssClass="Baterror" 
                                                                ErrorMessage="Tên người dùng." ToolTip="Nhập tên đăng nhập." 
                                                                ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password"  Font-Bold="True">Password:</asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="Password" runat="server"
                                                                TextMode="Password" Width="120px"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                                ControlToValidate="Password" CssClass="Baterror"
                                                                ErrorMessage="Mật khẩu người dùng." ToolTip="Password is required." 
                                                                ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td></td>
                                                        <td>
                                                            <asp:CheckBox ID="RememberMe" runat="server" />
                                                            <asp:Label ID="RememberMeLabel" runat="server" AssociatedControlID="RememberMe" Font-Size="Small">Duy trì đăng nhập</asp:Label></td>
                                                    </tr>
                                                </fieldset>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td style="padding-left: 35px;">
                                                        <asp:Button ID="LoginButton" runat="server" BorderStyle="Dashed" 
                                                            CommandName="Login" Font-Bold="True" ForeColor="Black" Text="Đăng nhập" 
                                                            ValidationGroup="LoginUserValidationGroup"/>
                                                    </td>
                                                </tr>
                                            </caption>
                                        </table>
                                </LayoutTemplate>
                            </asp:Login>
      
                        

                    </center>
                </div>
            </li>
        </ul>
    </div>
    <!-- END .section -->
</asp:Content>
