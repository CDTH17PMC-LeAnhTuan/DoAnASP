<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/View/Admin.Master" AutoEventWireup="true"  Inherits="buoi2.Admin.View.ShowProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="wrapper">
            <div class="container-fluid">
                    <div class="col-lg-12">
                        <h1 class="text-center">Quản Lý Danh Sách Sản Phẩm</h1>
                        <div class="card-box">                          
                            <div class="table-responsive">                                                         
                                 <asp:GridView ID="grvDSProduct" runat="server" AutoGenerateColumns="False" CssClass="table table-dark mb-0">
                                     <Columns>
                                         <asp:BoundField DataField="MaSP" HeaderText="Mã Sản Phẩm" />
                                         <asp:BoundField DataField="TenSP" HeaderText="Tên Sản Phẩm" />
                                         <asp:BoundField DataField="ThongTin" HeaderText="Thông tin sản phẩm" />
                                         <asp:BoundField DataField="GiaTien" HeaderText="Giá tiền" />
                                         <asp:BoundField DataField="SoLuongTonKho" HeaderText="Số lượng tồn kho" />
                                         <asp:BoundField DataField="MaLoaiSP" HeaderText="Mã loại sp" />
                                         <asp:BoundField DataField="AnhMinhHoa" HeaderText="Ảnh minh họa" />
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
