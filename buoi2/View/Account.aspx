<%@ Page Title="" Language="C#" MasterPageFile="~/View/GiaoDienChinh.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="buoi2.View.Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="phdHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phdBody" runat="server">
    <div class="container">
        <div class="col-sm-12">
            <div class="card-box">
                <div class="table-esponsive">
                    <asp:GridView ID="grvDSUser" runat="server" CssClass="table table-hover" AutoGenerateColumns="False" OnRowCommand="grvDSUser_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="TenTaiKhoan" HeaderText="Tên Tài Khoản" />
                            <asp:BoundField DataField="MatKhau" HeaderText="Mật Khẩu" />
                            <asp:BoundField DataField="Email" HeaderText="Email" />
                            <asp:BoundField DataField="SDT" HeaderText="SĐT" />
                            <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" />
                            <asp:BoundField DataField="HoTen" HeaderText="Họ Tên" />
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:Button ID="btnChonTK" runat="server" CausesValidation="False" CommandName="ChonTK" CommandArgument='<%# Eval("TenTaiKhoan") %>' Text="Chọn" CssClass="btn-success" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <div class="col-sm-4">
                <asp:Panel ID="formSignup" runat="server" CssClass="signup-form">
                    <!--sign up form-->
                    <h2>Update Information!</h2>
                    <%--<form action="#">--%>
                    <asp:TextBox ID="txtTenTaiKhoan" runat="server" type="text" placeholder="Name" />
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="Email Address" />
                    <asp:TextBox ID="txtMatKhau" runat="server"  placeholder="Password" />
                    <asp:TextBox ID="txtSDT" runat="server" TextMode="Number" placeholder="Phone" />
                    <asp:TextBox ID="txtDiaChi" runat="server" placeholder="Address" />
                    <asp:TextBox ID="txtHoTen" runat="server" placeholder="Full Name" />
                    <asp:Button ID="btnCapNhat" runat="server" CssClass="btn btn-default" BackColor="Orange" Text="Cập Nhật" OnClick="btnCapNhat_Click" />
                    <%--</form>--%>
                </asp:Panel>
                <!--/sign up form-->
            </div>
        </div>
    </div>
</asp:Content>
