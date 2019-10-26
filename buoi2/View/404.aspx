<%@ Page Title="" Language="C#" MasterPageFile="~/View/GiaoDienChinh.Master" AutoEventWireup="true" CodeBehind="404.aspx.cs" Inherits="buoi2._404" %>
<asp:Content ID="Content1" ContentPlaceHolderID="phdHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phdBody" runat="server">
    <div class="container text-center">
		<div class="logo-404">
			<a href="Index.aspx"><img src="../View/images/home/logo.png" alt="" /></a>
		</div>
		<div class="content-404">
			<img src="../View/images/404/404.png" class="img-responsive" alt="" />
			<h1><b>OPPS!</b> We Couldn’t Find this Page</h1>
			<p>Uh... So it looks like you brock something. The page you are looking for has up and Vanished.</p>
			<h2><a href="Index.aspx">Bring me back Home</a></h2>
		</div>
	</div>

</asp:Content>
