<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/View/Admin.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="buoi2.Admin.View.DangNhap" %>
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
                                        <span><img src="assets/images/logo-dark.png" alt="" height="26"></span>
                                    </a>
                                    <p class="text-muted mb-4 mt-3">Enter your email address and password to access admin panel.</p>
                                </div>

                                <h5 class="auth-title">Đăng Nhập</h5>

                               
                                <div>
                                    <div class="form-group mb-3">
                                        <label for="tentaikhoan">Tên Tài Khoản </label>
                                        <asp:TextBox  ID="txtTenTaiKhoan" runat="server" class="form-control"  type="text" required=""/>
                                    </div>

                                    <div class="form-group mb-3">
                                        <label for="matkhau">Mật Khẩu</label>
                                        <asp:TextBox  ID="txtMatKhau" runat="server" class="form-control" TextMode="Password" type="password" required=""/>
                                    </div>

                                    <div class="form-group mb-3">
                                        <div class="custom-control custom-checkbox checkbox-info">
                                            <input type="checkbox" class="custom-control-input" id="checkbox-signin">
                                            <label class="custom-control-label" for="checkbox-signin">Remember me</label>
                                        </div>
                                    </div>

                                    <div class="form-group mb-0 text-center">
                                        <asp:Button ID="btnDangNhap" runat="server" CssClass="btn btn-danger btn-block" text="Đăng Nhập" type="submit" OnClick="btnDangNhap_Click"/> 
                                    </div>

                                </div>

                                <div class="text-center">
                                    <h5 class="mt-3 text-muted">Đăng nhập với</h5>
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

                            </div> <!-- end card-body -->
                        </div>
                        <!-- end card -->

                        <div class="row mt-3">
                            <div class="col-12 text-center">
                                <p> <a href="pages-recoverpw.html" class="text-muted ml-1">Quên mật khẩu?</a></p>
                                <p class="text-muted">Không có tài khoản? <a href="DangKy.aspx" class="text-muted ml-1"><b class="font-weight-semibold">Tạo Tài Khoản</b></a></p>
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->

                    </div> <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        
            </label>
            </label>
        
</asp:Content>
