<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/View/Admin.Master" AutoEventWireup="true" CodeBehind="QuanLyHoaDon.aspx.cs" Inherits="buoi2.Admin.View.QuanLyHoaDon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <div class="container-fluid">
            <div class="col-lg-12">
                <h1 class="text-center">Quản Lý Hóa Đơn </h1>
                <div class="card-box">
                    <div class="table-responsive">
                        <asp:GridView ID="grvHoaDon" runat="server">

                        </asp:GridView>
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
