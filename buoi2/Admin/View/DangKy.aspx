<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/View/Admin.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="buoi2.Admin.View.DangKy" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6 col-xl-5">
                <div class="card">

                    <div class="card-body p-4">

                        <div class="text-center w-75 m-auto">
                            <a href="index.html">
                                <span>
                                    <img src="assets/images/logo-dark.png" alt="" height="26"></span>
                            </a>
                            <p class="text-muted mb-4 mt-3">Don't have an account? Create your free account now.</p>
                        </div>

                        <h5 class="auth-title">Tạo Tài Khoản</h5>

                        <form action="#">

                            <div class="form-group">
                                <label for="tentaikhoan">Tên Tài Khoản </label>
                                <asp:TextBox runat="server" CssClass="form-control" type="text" ID="txtTenTaiKhoan" />
                            </div>
                            <div class="form-group">
                                <label for="matkhau">Mật Khẩu</label>
                                <asp:TextBox runat="server" CssClass="form-control" type="password" TextMode="Password" ID="txtMatKhau"/>
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <asp:TextBox runat="server" CssClass="form-control" type="email" ID="txtEmail" />
                            </div>
                            <div class="form-group">
                                <label for="sdt">Số Điện Thoại</label>
                                <asp:TextBox runat="server" CssClass="form-control" type="phone" ID="txtSDT" />
                            </div>
                            <div class="form-group">
                                <label for="diachi">Địa Chỉ</label>
                                <asp:TextBox runat="server" CssClass="form-control" type="text" ID="txtDiaChi" />
                            </div>
                             <div class="form-group">
                                <label for="hoten">Họ Tên</label>
                                <asp:TextBox runat="server" CssClass="form-control" type="text" ID="txtHoTen" />
                            </div>
                             <div class="form-group">
                                <label for="anhdaidien">Ảnh Đại Diện</label>
                                <asp:FileUpload runat="server" CssClass="form-control-file" type="file" ID="fileupload" />
                            </div>
                            
                            <div class="form-group mb-0 text-center">
                                <asp:Button runat="server" CssClass="btn btn-danger btn-block" id="btnDangKy" type="submit" Text="Đăng Ký" OnClick="btnDangKy_Click"/> 
                            </div>

                        </form>

                        <div class="text-center">
                            <h5 class="mt-3 text-mute">Đăng ký sử dụng</h5>
                            <ul class="social-list list-inline mt-3 mb-0">
                                <li class="list-inline-item">
                                    <a href="javascript: void(0);" class="social-list-item border-primary text-primary"><i class="mdi mdi-facebook"></i></a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="javascript: void(0);" class="social-list-item border-danger text-danger"><i class="mdi mdi-google"></i></a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="javascript: void(0);" class="social-list-item border-info text-info"><i class="mdi mdi-twitter"></i></a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="javascript: void(0);" class="social-list-item border-secondary text-secondary"><i class="mdi mdi-github-circle"></i></a>
                                </li>
                            </ul>
                        </div>

                    </div>
                    <!-- end card-body -->
                </div>
                <!-- end card -->

                <div class="row mt-3">
                    <div class="col-12 text-center">
                        <p class="text-muted">Bạn đã có tài khoản? <a href="DangNhap.aspx" class="text-muted ml-1"><b class="font-weight-semibold">Đăng Nhập</b></a></p>
                    </div>
                    <!-- end col -->
                </div>
                <!-- end row -->

            </div>
            <!-- end col -->
        </div>
        <!-- end row -->
    </div>
    <!-- end container -->
</asp:Content>
