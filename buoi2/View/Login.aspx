<%@ Page Title="" Language="C#" MasterPageFile="~/View/GiaoDienChinh.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="buoi2.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="phdHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phdBody" runat="server">
    
    <section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<asp:Panel ID="formLogin" runat="server" CssClass="login-form"><!--login form-->
						<h2>Login to your account</h2>
						<%--<form action="#">--%>
							<asp:TextBox ID="txtName" runat="server" placeholder="Name" />
							<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password " />
							<span>
								<asp:CheckBox ID="chkCheck" runat="server" type="checkbox" class="checkbox"/>
								Keep me signed in
							</span>
							<asp:Button ID="btnLogin" runat="server"  CssClass="btn btn-default" BackColor="Orange" Text="Login" OnClick="btnLogin_Click"/>
						<%--</form>--%>
					</asp:Panel><!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">OR</h2>
				</div>
				<div class="col-sm-4">
					<asp:Panel ID="formSignup" runat="server" CssClass="signup-form"><!--sign up form-->
						<h2>New User Signup!</h2>
						<%--<form action="#">--%>
							<asp:TextBox ID="txtName1" runat="server" type="text" placeholder="Name"/>
							<asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="Email Address"/>
							<asp:TextBox ID="txtPassword1" runat="server" TextMode="Password" placeholder="Password"/>
                            <asp:TextBox ID="txtSDT" runat="server" TextMode="Number" placeholder="Phone"/>
                            <asp:TextBox ID="txtDiaChi" runat="server"  placeholder="Address"/>
                            <asp:TextBox ID="txtHoTen" runat="server"  placeholder="Full Name"/>
							<asp:Button  ID="btnSignup" runat="server" CssClass="btn btn-default" BackColor="Orange" Text="Sign up" OnClick="btnSignup_Click"/>
						<%--</form>--%>
					</asp:Panel><!--/sign up form-->
				</div>
			</div>
		</div>
	</section><!--/form-->
</asp:Content>
