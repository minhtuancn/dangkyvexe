<%@ Page Title="" Language="C#" MasterPageFile="~/Skin.master" AutoEventWireup="true" CodeFile="Dangky.aspx.cs" Inherits="Register" %>

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
                                   <%-- <%=Membership.MinRequiredPasswordLength %>--%>
                                   <div style="margin-left: 160px;">
                                    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
                                        <WizardSteps>
                                            <asp:CreateUserWizardStep ID="RegisterUserWizardStep" runat="server">
                                                
                                                <ContentTemplate>
                                                    <span>
                                                        <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                                                    </span>
                                                    <fieldset>
                                                       <p> <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" CssClass="labelcreatecount">Tên đăng nhập: </asp:Label><br />
                                                            <asp:TextBox ID="UserName" runat="server" Width="200px"></asp:TextBox>
                                                           <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                               ErrorMessage="*" ControlToValidate="UserName" CssClass="baterror" 
                                                               ValidationGroup="RegisterUserValidationGroup"></asp:RequiredFieldValidator>
                                                       </p>

                                                       <p>
                                                             <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" CssClass="labelcreatecount">Mật khẩu:</asp:Label><br />
                                                            <asp:TextBox ID="Password" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                                                           <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                               ErrorMessage="*" ControlToValidate="Password" CssClass="baterror" 
                                                               ValidationGroup="RegisterUserValidationGroup"></asp:RequiredFieldValidator>
                                                       </p>

                                                       <p>
                                                            <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword" CssClass="labelcreatecount">Nhập lại mật khẩu: </asp:Label><br />
                                                            <asp:TextBox ID="ConfirmPassword" runat="server" Width="200px" 
                                                                TextMode="Password"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                                               ErrorMessage="*" ControlToValidate="ConfirmPassword" CssClass="baterror" 
                                                               ValidationGroup="RegisterUserValidationGroup"></asp:RequiredFieldValidator>
                                                            <asp:CompareValidator ID="PasswordCompare" runat="server" ErrorMessage="*" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ValidationGroup="RegisterUserValidationGroup" CssClass="baterror"></asp:CompareValidator>
                                                       </p>

                                                       <p>
                                                            <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" CssClass="labelcreatecount">Email: </asp:Label><br />
                                                            <asp:TextBox ID="Email" runat="server" Width="200px"></asp:TextBox>
                                                           <asp:RegularExpressionValidator ID="EmailRequired" runat="server" 
                                                                ErrorMessage="*" CssClass="baterror" ControlToValidate="Email" 
                                                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                                                ValidationGroup="RegisterUserValidationGroup"></asp:RegularExpressionValidator>
                                                       </p>
                                                       

                                                    </fieldset>
                                                    <p style="text-align: center">
                                                        <asp:Button ID="CreateUserButton" runat="server" Text="Đăng ký" ValidationGroup="RegisterUserValidationGroup" CommandName="MoveNext"/>
                                                    </p>

                                                </ContentTemplate>
                                                <CustomNavigationTemplate>
                                                </CustomNavigationTemplate>
                                            </asp:CreateUserWizardStep>
                                          <asp:CompleteWizardStep runat="server"></asp:CompleteWizardStep>
                                        </WizardSteps>
                                    </asp:CreateUserWizard>
                                </div>
                            </div>
                        </li>
              
                    </ul>    
        </div><!-- END .section -->
</asp:Content>

