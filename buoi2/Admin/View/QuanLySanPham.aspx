<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/View/Admin.Master" AutoEventWireup="true" CodeBehind="QuanLySanPham.aspx.cs" Inherits="buoi2.Admin.View.QLSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="wrapper">
            <div class="container-fluid">
                    <div class="col-lg-12">
                        <h1 class="text-center">Quản Lý Danh Sách Sản Phẩm</h1>
                        <div class="card-box">                          
                            <div class="table-responsive">                                                         
                                 <asp:GridView ID="grvDSProduct" runat="server" AutoGenerateColumns="False" CssClass="table table-light mb-0 table-bordered" OnRowCommand="grvDSProduct_RowCommand" >
                                     <Columns>
                                         <asp:BoundField DataField="MaSP" HeaderText="Mã Sản Phẩm" />
                                         <asp:BoundField DataField="TenSP" HeaderText="Tên Sản Phẩm" />
                                         <asp:BoundField DataField="ThongTin" HeaderText="Thông tin sản phẩm" />
                                         <asp:BoundField DataField="GiaTien" HeaderText="Giá tiền" />
                                         <asp:BoundField DataField="SoLuongTonKho" HeaderText="Số lượng tồn kho" />
                                         <asp:BoundField DataField="MaLoaiSP" HeaderText="Mã loại sp" />
                                         <asp:BoundField DataField="AnhMinhHoa" HeaderText="Ảnh minh họa" />
                                         <asp:BoundField DataField="TrangThai" HeaderText="Trạng Thái" />
                                        
                                         <asp:TemplateField ShowHeader="False">
                                             <ItemTemplate>
                                                 <asp:Button ID="btnChonSP" runat="server" CausesValidation="False" CommandName="ChonSP" CommandArgument='<%# Eval("MaSP") %>' Text="Chọn" CssClass="btn-success  btn-rounded" />
                                                 <asp:Button ID="btnXoaSP" runat="server" CausesValidation="False" CommandName="XoaSP" CommandArgument='<%# Eval("MaSP") %>' Text="Xóa" CssClass="btn-success  btn-rounded" />
                                             </ItemTemplate>
                                         </asp:TemplateField>
                                        
                                     </Columns>
                                    </asp:GridView>
                                <br />
                                <br />
                                 <div class="parsley-examples">
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-4 col-form-label">Mã Sản Phẩm<span class="text-danger">*</span></label>
                                <div class="col-7">
                                    <asp:TextBox ID="txtMaSanPham" runat="server" CssClass="form-control"
                                        placeholder="Mã Sản Phẩm " />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="hori-pass1" class="col-4 col-form-label">Tên Sản Phẩm<span class="text-danger">*</span></label>
                                <div class="col-7">
                                    <asp:TextBox ID="txtTenSanPham" runat="server"  placeholder="Tên Sản Phẩm"
                                        CssClass="form-control" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="hori-pass2" class="col-4 col-form-label">Thông Tin Sản Phẩm  <span class="text-danger">*</span></label>
                                <div class="col-7">
                                    <asp:TextBox ID="txtThongTinSP" runat="server" placeholder="Thông tin sản phẩm" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="webSite" class="col-4 col-form-label">Gía Tiền<span class="text-danger">*</span></label>
                                <div class="col-7">
                                    <asp:TextBox ID="txtGiaTien" runat="server" CssClass="form-control" placeholder="Gía Tiền" TextMode="Phone" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-4 col-form-label">Số Lượng Tồn Kho<span class="text-danger">*</span></label>
                                <div class="col-7">
                                    <asp:TextBox ID="txtSoLuong" runat="server" CssClass="form-control" placeholder="Số Lượng Tồn Kho" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-4 col-form-label">Mã Loại SP<span class="text-danger">*</span></label>
                                <div class="col-7">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtMaLoaiSP" placeholder="Mã Loại Sản Phẩm" />
                                </div>
                            </div>
                
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-4 col-form-label">Ảnh Minh Họa<span class="text-danger">*</span></label>
                                <div class="col-4">
                                    <asp:TextBox runat="server" ID="txtAnhMinhHoa" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-4 col-form-label">Trạng thái<span class="text-danger">*</span></label>
                                <div class="col-1">
                                    <asp:CheckBox runat="server" CssClass="form-control" ID="chkTrangThai" placeholder="Trạng Thái" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-8 offset-4">
                                    <asp:Button runat="server" ID="btnThem" CssClass="btn btn-primary waves-effect waves-light mr-1" Text="Thêm" OnClick="btnThem_Click" />
                                    <asp:Button runat="server" ID="btnCapNhat" CssClass="btn btn-primary waves-effect waves-light mr-1" Text="Cập nhật" OnClick="btnCapNhat_Click" />                                
                                </div>
                            </div>
                        </div>
                            </div>
                        </div> <!-- end card-box -->
                    </div> <!-- end col -->
                </div>
                <!--- end row -->            
            </div> <!-- end container -->  
</asp:Content>
