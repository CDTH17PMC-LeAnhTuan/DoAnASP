<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/View/Admin.Master" AutoEventWireup="true" CodeBehind="ChiTietHoaDon.aspx.cs" Inherits="buoi2.Admin.View.ChiTietHoaDon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="wrapper">
        <div class="container-fluid">
            <div class="col-lg-12">
                <h1 class="text-center">Chi Tiết Hóa Đơn </h1>
                <div class="card-box">
                    <div class="table-responsive">
                        <asp:GridView ID="grvCTHD" runat="server" AutoGenerateColumns="False" CssClass="table table-light mb-0 table-bordered">
                            <Columns>
                                <asp:BoundField DataField="MaHD" HeaderText="Mã Hóa Đơn" />
                                <asp:BoundField DataField="MaSP" HeaderText="Mã Sản phẩm" />
                                <asp:BoundField DataField="SoLuong" HeaderText="Số Lượng" />
                                <asp:BoundField DataField="DonGia" HeaderText="Gía Tiền"  /> 
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
                <!-- end card-box -->
            </div>
            <!-- end col -->
        </div>
        <!--- end row -->
    </div>

</asp:Content>
