<%@ Page Title="" Language="C#" MasterPageFile="~/Thú Cưng.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="login">
        <div class="login-main">
            <h2 class="login-heading">Login</h2>
            <div class="login-form">
                <div class="login-item">
                    <i class="icon-login far fa-user"></i>
                    <asp:TextBox ID="Text_tk" CssClass="login-input" placeholder="User Name" runat="server"></asp:TextBox><br />
                </div>
                    <asp:CustomValidator ID="CustomValidator1" ControlToValidate="Text_tk" runat="server" ErrorMessage="Tài khoản không tồn tại " OnServerValidate="Taikhoan"></asp:CustomValidator>
                <div class="login-item">
                    <i class="icon-login fas fa-lock"></i>
                    <asp:TextBox ID="Text_mk" CssClass="login-input" placeholder="******" TextMode="Password" runat="server"></asp:TextBox>
                </div>
                    <asp:CustomValidator ID="CustomValidator2" ControlToValidate="Text_mk" runat="server" ErrorMessage="Mật khẩu sai " OnServerValidate="Matkhau"></asp:CustomValidator>
                <a href="#" class="forgot-password">Forgot Password?</a>
                <div class="login-btn">
                    <asp:Button id="Btn_Login" runat="server" Text="Login" OnClick="Btn_Login_Click"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>