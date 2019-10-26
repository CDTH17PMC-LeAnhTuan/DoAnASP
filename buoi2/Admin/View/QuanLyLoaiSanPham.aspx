<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/View/Admin.Master" AutoEventWireup="true" CodeBehind="QuanLyLoaiSanPham.aspx.cs" Inherits="buoi2.Admin.View.QuanLyLoaiSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="wrapper">
            <div class="container-fluid">
                    <div class="col-lg-12">
                        <h1 class="text-center">Quản Lý Loại Sản Phẩm</h1>
                        <div class="card-box">
                          
                            <div class="table-responsive">                                                         
                                <asp:GridView ID="grvLoaiSanPham" runat="server" AutoGenerateColumns="False">
                                    <Columns>
                                        <asp:BoundField DataField="MaLoaiSP" HeaderText="Mã Loại Sản Phẩm" />
                                        <asp:BoundField DataField="TenLoaiSP" HeaderText="Tên Loại Sản Phẩm" />
                                        <asp:BoundField DataField="TrangThai" HeaderText="Trạng Thái" />
                                    </Columns>

                                </asp:GridView>
                            </div>
                        </div> <!-- end card-box -->
                    </div> <!-- end col -->
                </div>
                <!--- end row -->            
            </div> <!-- end container -->  
</asp:Content>
