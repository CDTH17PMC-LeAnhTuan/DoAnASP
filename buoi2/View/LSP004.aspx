<%@ Page Title="" Language="C#" MasterPageFile="~/View/GiaoDienChinh.Master" AutoEventWireup="true" CodeBehind="LSP004.aspx.cs" Inherits="buoi2.View.LSP004" %>
<asp:Content ID="Content1" ContentPlaceHolderID="phdHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phdBody" runat="server">
    <!--slider-->
    <section id="slider">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                            <li data-target="#slider-carousel" data-slide-to="1"></li>
                            <li data-target="#slider-carousel" data-slide-to="2"></li>
                        </ol>

                        <div class="carousel-inner">
                            <div class="item active">
                                <div class="col-sm-6">
                                    <h1><span>E</span>-SHOPPER</h1>
                                    <h2>Free E-Commerce Template</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                                    <button type="button" class="btn btn-default get">Get it now</button>
                                </div>
                                <div class="col-sm-6">
                                    <img src="../View/images/home/girl1.jpg" class="girl img-responsive" alt="" />
                                    <img src="../View/images/home/pricing.png" class="pricing" alt="" />
                                </div>
                            </div>
                            <div class="item">
                                <div class="col-sm-6">
                                    <h1><span>E</span>-SHOPPER</h1>
                                    <h2>100% Responsive Design</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                                    <button type="button" class="btn btn-default get">Get it now</button>
                                </div>
                                <div class="col-sm-6">
                                    <img src="../View/images/home/girl2.jpg" class="girl img-responsive" alt="" />
                                    <img src="../View/images/home/pricing.png" class="pricing" alt="" />
                                </div>
                            </div>

                            <div class="item">
                                <div class="col-sm-6">
                                    <h1><span>E</span>-SHOPPER</h1>
                                    <h2>Free Ecommerce Template</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                                    <button type="button" class="btn btn-default get">Get it now</button>
                                </div>
                                <div class="col-sm-6">
                                    <img src="../View/images/home/girl3.jpg" class="girl img-responsive" alt="" />
                                    <img src="../View/images/home/pricing.png" class="pricing" alt="" />
                                </div>
                            </div>

                        </div>

                        <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                            <i class="fa fa-angle-left"></i>
                        </a>
                        <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!--/slider-->
    <section>
        <div class="container">
            <div class="row">


                <div class="col-sm-12 padding-right">
                    <div class="features_items">
                        <!--features_items-->
                        <h2 class="title text-center">Features Items</h2>
                        <asp:Repeater ID="rptSanPham04" runat="server">
                            <ItemTemplate>
                                <div class="col-sm-3">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <asp:Image ID="imgAnhMinhHoa" runat="server" ImageUrl='<%#  "images/shop/" + Eval("AnhMinhHoa") %>' />
                                                <h2>
                                                    <asp:Label ID="lblGiaTien" runat="server" Text='<%# "$" + Eval("GiaTien") %>'></asp:Label></h2>
                                                <p>
                                                    <asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                                                </p>
                                                <asp:LinkButton ID="btnThemGH" runat="server" CssClass="btn btn-default add-to-cart" CommandName="ThemGH" CommandArgument='<%# Eval("MaSP") %>'><i class="fa fa-shopping-cart"></i>Add to cart</asp:LinkButton>
                                            </div>
                                            <div class="product-overlay">
                                                <div class="overlay-content">
                                                    <h2>
                                                        <asp:Label ID="lblGiaTien1" runat="server" Text='<%# "$" + Eval("GiaTien") %>'></asp:Label></h2>
                                                    <p>
                                                        <asp:Label ID="lblTenSP1" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                                                    </p>
                                                    <asp:LinkButton ID="btnThemGH1" runat="server" CssClass="btn btn-default add-to-cart" CommandName="ThemGH" CommandArgument='<%# Eval("MaSP") %>'><i class="fa fa-shopping-cart"></i>Add to cart</asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="choose">
                                            <ul class="nav nav-pills nav-justified">
                                                <li>
                                                    <asp:HyperLink ID="hplSanPham" runat="server" NavigateUrl='<%# "Shop_ProductDetails.aspx?MaSP=" + Eval("MaSP") %>'><i class="fa fa-plus-square"></i>Quit View Product</asp:HyperLink>
                                                    <%--<li>--%>
                                                    <%--  <asp:LinkButton ID="btnCompare" runat="server"><i class="fa fa-plus-square"></i>Add to compare</asp:LinkButton></li>--%>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <!--features_items-->



                </div>
            </div>
        </div>
    </section>
</asp:Content>

