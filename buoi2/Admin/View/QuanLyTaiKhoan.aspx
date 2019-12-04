<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/View/Admin.Master" AutoEventWireup="true" Inherits="buoi2.Admin.View.index" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="wrapper">
        <div class="container-fluid">
            <div class="col-lg-12">
                <h1 class="text-center">Quản Lý Danh Sách Tài Khoản</h1>
                <div class="card-box">
                  
                        <div class="table-esponsive">
                            <asp:GridView ID="grvDSUser" runat="server" CssClass="table table-light mb-0" AutoGenerateColumns="False" Height="326px" Width="1101px" OnRowCommand="grvDSUser_RowCommand">
                                <Columns>
                                    <asp:BoundField DataField="TenTaiKhoan" HeaderText="Tên Tài Khoản" />
                                    <asp:BoundField DataField="MatKhau" HeaderText="Mật Khẩu" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" />
                                    <asp:BoundField DataField="SDT" HeaderText="SĐT" />
                                    <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" />
                                    <asp:BoundField DataField="HoTen" HeaderText="Họ Tên" />
                                    <asp:CheckBoxField DataField="LaAdmin" HeaderText="Là Admin"></asp:CheckBoxField>
                                    <asp:BoundField DataField="AnhDaiDien" HeaderText="Ảnh Đại Diện" />
                                    <asp:CheckBoxField DataField="TrangThai" HeaderText="Trạng Thái" />
                                    <asp:TemplateField HeaderText="Tùy Chọn" ShowHeader="False">
                                        <ItemTemplate>
                                            <asp:Button ID="btnChon" runat="server" CausesValidation="False" CommandName="ChonTK" CommandArgument='<%# Eval("TenTaiKhoan") %>' Text="Chọn" CssClass="btn-success  btn-rounded" /><br />
                                            <asp:Button ID="btnXoa" runat="server" CausesValidation="False" CommandName="XoaTK"  CommandArgument='<%# Eval("TenTaiKhoan") %>' Text="Xóa" CssClass="btn-danger btn-rounded" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                        <br />
                        <br />
                        <div class="parsley-examples">
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-4 col-form-label">Tên Tài Khoản<span class="text-danger">*</span></label>
                                <div class="col-7">
                                    <asp:TextBox ID="txtTenTaiKhoan" runat="server" CssClass="form-control"
                                        placeholder="Tên Tài Khoản" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="hori-pass1" class="col-4 col-form-label">Mật Khẩu<span class="text-danger">*</span></label>
                                <div class="col-7">
                                    <asp:TextBox ID="txtMatKhau" runat="server" TextMode="password" placeholder="Mật Khẩu"
                                        CssClass="form-control" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="hori-pass2" class="col-4 col-form-label">Email  <span class="text-danger">*</span></label>
                                <div class="col-7">
                                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="email" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="webSite" class="col-4 col-form-label">SĐT<span class="text-danger">*</span></label>
                                <div class="col-7">
                                    <asp:TextBox ID="txtSDT" runat="server" CssClass="form-control" placeholder="SĐT" TextMode="Phone" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-4 col-form-label">Địa Chỉ<span class="text-danger">*</span></label>
                                <div class="col-7">
                                    <asp:TextBox ID="txtDiaChi" runat="server" CssClass="form-control" placeholder="Địa Chỉ" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-4 col-form-label">Họ Tên<span class="text-danger">*</span></label>
                                <div class="col-7">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtHoTen" placeholder="Họ Tên" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-4 col-form-label">Là Admin<span class="text-danger">*</span></label>
                                <div class="col-1">
                                    <asp:CheckBox runat="server" CssClass="form-control" ID="chkLaAdmin" placeholder="Họ Tên" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-4 col-form-label">Ảnh đại diện<span class="text-danger">*</span></label>
                                <div class="col-4">
                                    <asp:TextBox runat="server" ID="txtAnhDaiDien" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-4 col-form-label">Trạng thái<span class="text-danger">*</span></label>
                                <div class="col-1">
                                    <asp:CheckBox runat="server" CssClass="form-control" ID="chkTrangThai" placeholder="Họ Tên" />
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
                <!-- end card-box -->
            </div>
            <!-- end col -->
        </div>
        <!--- end row -->
    </div>
    <!-- end container -->
</asp:Content>
