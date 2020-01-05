<%@ Page Title="" Language="C#" MasterPageFile="~/View/GiaoDienChinh.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="buoi2.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="phdHead" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="phdBody" runat="server">
    
    <!--slider-->
   
    <section id="slider">
        <div class="container">
            <asp:Label ID="lblHienThi" runat="server"></asp:Label>
            <asp:Button ID="btnDangXuat" runat="server" Text="Đăng xuất" CssClass="btn btn-danger" OnClick="btnDangXuat_Click" Visible="false" />
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
         <div class="container">
        <div class="col-sm-6">
         <asp:TextBox ID="txtTimKiem" runat="server" CssClass="form-control mr-sm-2" type="text" placeholder="Search"/>
          <asp:Button ID="btnTimKiem" runat="server" CssClass="btn btn-warning" Text="Search" OnClick="btnTimKiem_Click" /> 
            </div>
            </div>
    </section>
    <!--/slider-->
    <section>
       
        <div class="container">
            <div class="row">                   
                <div class="col-sm-3">
                    <div class="left-sidebar">
                        <h2>Category</h2>
                        <div class="panel-group category-products" id="accordian">
                            <!--category-productsr-->
                            <asp:Repeater ID="rpLoaiSP" runat="server">
                                <ItemTemplate>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <asp:HyperLink runat="server" data-toggle="collapse" data-parent="#accordian" href='<%# "#" + Eval("MaLoaiSP") %>' Text='<%# Eval("TenLoaiSP") %>'>
                                            <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                </asp:HyperLink>
                                            </h4>
                                        </div>
                                        <div id='<%# Eval("MaLoaiSP") %>' class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <ul>
                                                    <li><a href="LSP001.aspx">LSP001 </a></li>
                                                    <li><a href="LSP002.aspx">LSP002 </a></li>
                                                    <li><a href="LSP003.aspx">LSP003 </a></li>
                                                    <li><a href="LSP004.aspx">LSP004 </a></li>
                                                    <li><a href="LSP005.aspx">LSP005 </a></li>


                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <!--/category-products-->

                        <div class="brands_products">
                            <!--brands_products-->
                            <h2>Brands</h2>
                            <div class="brands-name">
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="#"><span class="pull-right">(50)</span>Acne</a></li>
                                    <li><a href="#"><span class="pull-right">(56)</span>Grüne Erde</a></li>
                                    <li><a href="#"><span class="pull-right">(27)</span>Albiro</a></li>
                                    <li><a href="#"><span class="pull-right">(32)</span>Ronhill</a></li>
                                    <li><a href="#"><span class="pull-right">(5)</span>Oddmolly</a></li>
                                    <li><a href="#"><span class="pull-right">(9)</span>Boudestijn</a></li>
                                    <li><a href="#"><span class="pull-right">(4)</span>Rösch creative culture</a></li>
                                </ul>
                            </div>
                        </div>
                        <!--/brands_products-->

                        <div class="price-range">
                            <!--price-range-->
                            <h2>Price Range</h2>
                            <div class="well text-center">
                                <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2"><br />
                                <b class="pull-left">$ 0</b> <b class="pull-right">$ 600</b>
                            </div>
                        </div>
                        <!--/price-range-->

                        <div class="shipping text-center">
                            <!--shipping-->
                            <img src="../images/home/shipping.jpg" alt="" />
                        </div>
                        <!--/shipping-->

                    </div>
                </div>
               
                    <div class="col-sm-9 padding-right">
                    <div class="features_items">
                        <!--features_items-->
                        <h2 class="title text-center">Features Items</h2>
                        <asp:Repeater ID="rptSanPham" runat="server" OnItemCommand="rptSanPham_ItemCommand">
                            <ItemTemplate>
                                <div class="col-sm-4">
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

                    <div class="category-tab">
                        <!--category-tab-->

                        <div class="col-sm-12">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#tshirt" data-toggle="tab">T-Shirt</a></li>
                                <li><a href="#blazers" data-toggle="tab">Blazers</a></li>
                                <li><a href="#sunglass" data-toggle="tab">Sunglass</a></li>
                                <li><a href="#kids" data-toggle="tab">Kids</a></li>
                                <li><a href="#poloshirt" data-toggle="tab">Polo shirt</a></li>
                            </ul>
                        </div>
                        <div class="tab-content">
                            <div class="tab-pane fade active in" id="tshirt">
                                <asp:Repeater ID="rptTshirt" runat="server">
                                    <ItemTemplate>
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center">
                                                            <asp:HyperLink ID="hplSanPham" runat="server" NavigateUrl='<%# "Shop_ProductDetails.aspx?MaSP=" + Eval("MaSP") %>'>
                                                                <asp:Image ID="imgAnhMinhHoa" runat="server" ImageUrl='<%#  "/View/images/shop/" + Eval("AnhMinhHoa") %>' />
                                                            </asp:HyperLink>
                                                            <h2>
                                                                <asp:Label ID="lblGiaTien" runat="server" Text='<%# "$" + Eval("GiaTien") %>'></asp:Label></h2>
                                                            <p>
                                                                <asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                                                            </p>
                                                            <asp:LinkButton ID="btnThemGH" runat="server" CssClass="btn btn-default add-to-cart" CommandName="ThemGH" CommandArgument='<%# Eval("MaSP") %>'><i class="fa fa-shopping-cart"></i>Add to cart</asp:LinkButton>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>

                            <div class="tab-pane fade" id="blazers">
                                <asp:Repeater ID="rptBlazers" runat="server">
                                    <ItemTemplate>
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center">
                                                            <asp:HyperLink ID="hplSanPham" runat="server" NavigateUrl='<%# "Shop_ProductDetails.aspx?MaSP=" + Eval("MaSP") %>'>
                                                                <asp:Image ID="imgAnhMinhHoa" runat="server" ImageUrl='<%#  "/View/images/shop/" + Eval("AnhMinhHoa") %>' />
                                                            </asp:HyperLink>
                                                            <h2>
                                                                <asp:Label ID="lblGiaTien" runat="server" Text='<%# "$" + Eval("GiaTien") %>'></asp:Label></h2>
                                                            <p>
                                                                <asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                                                            </p>
                                                            <asp:LinkButton ID="btnThemGH" runat="server" CssClass="btn btn-default add-to-cart" CommandName="ThemGH" CommandArgument='<%# Eval("MaSP") %>'><i class="fa fa-shopping-cart"></i>Add to cart</asp:LinkButton>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>

                            <div class="tab-pane fade" id="sunglass">
                                <asp:Repeater ID="rptSunglass" runat="server">
                                    <ItemTemplate>
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center">
                                                            <asp:HyperLink ID="hplSanPham" runat="server" NavigateUrl='<%# "Shop_ProductDetails.aspx?MaSP=" + Eval("MaSP") %>'>
                                                                <asp:Image ID="imgAnhMinhHoa" runat="server" ImageUrl='<%#  "/View/images/shop/" + Eval("AnhMinhHoa") %>' />
                                                            </asp:HyperLink>
                                                            <h2>
                                                                <asp:Label ID="lblGiaTien" runat="server" Text='<%# "$" + Eval("GiaTien") %>'></asp:Label></h2>
                                                            <p>
                                                                <asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                                                            </p>
                                                            <asp:LinkButton ID="btnThemGH" runat="server" CssClass="btn btn-default add-to-cart" CommandName="ThemGH" CommandArgument='<%# Eval("MaSP") %>'><i class="fa fa-shopping-cart"></i>Add to cart</asp:LinkButton>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                            <div class="tab-pane fade" id="kids">
                                <asp:Repeater ID="rptKids" runat="server">
                                    <ItemTemplate>
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center">
                                                            <asp:HyperLink ID="hplSanPham" runat="server" NavigateUrl='<%# "Shop_ProductDetails.aspx?MaSP=" + Eval("MaSP") %>'>
                                                                <asp:Image ID="imgAnhMinhHoa" runat="server" ImageUrl='<%#  "/View/images/shop/" + Eval("AnhMinhHoa") %>' />
                                                            </asp:HyperLink>
                                                            <h2>
                                                                <asp:Label ID="lblGiaTien" runat="server" Text='<%# "$" + Eval("GiaTien") %>'></asp:Label></h2>
                                                            <p>
                                                                <asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                                                            </p>
                                                            <asp:LinkButton ID="btnThemGH" runat="server" CssClass="btn btn-default add-to-cart" CommandName="ThemGH" CommandArgument='<%# Eval("MaSP") %>'><i class="fa fa-shopping-cart"></i>Add to cart</asp:LinkButton>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                            <div class="tab-pane fade" id="poloshirt">
                                <asp:Repeater ID="rptPoloshirt" runat="server">
                                    <ItemTemplate>
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center">
                                                            <asp:HyperLink ID="hplSanPham" runat="server" NavigateUrl='<%# "Shop_ProductDetails.aspx?MaSP=" + Eval("MaSP") %>'>
                                                                <asp:Image ID="imgAnhMinhHoa" runat="server" ImageUrl='<%#  "/View/images/shop/" + Eval("AnhMinhHoa") %>' />
                                                            </asp:HyperLink>
                                                            <h2>
                                                                <asp:Label ID="lblGiaTien" runat="server" Text='<%# "$" + Eval("GiaTien") %>'></asp:Label></h2>
                                                            <p>
                                                                <asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                                                            </p>
                                                            <asp:LinkButton ID="btnThemGH" runat="server" CssClass="btn btn-default add-to-cart" CommandName="ThemGH" CommandArgument='<%# Eval("MaSP") %>'><i class="fa fa-shopping-cart"></i>Add to cart</asp:LinkButton>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                    </div>
                    <!--/category-tab-->

                    <div class="recommended_items">
                        <!--recommended_items-->
                        <h2 class="title text-center">recommended items</h2>

                        <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="item active">
                                    <asp:Repeater ID="rptCarousel1" runat="server">
                                        <ItemTemplate>
                                            <div class="col-sm-4">
                                                <div class="product-image-wrapper">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center">
                                                            <asp:HyperLink ID="hplSanPham" runat="server" NavigateUrl='<%# "Shop_ProductDetails.aspx?MaSP=" + Eval("MaSP") %>'>
                                                                <asp:Image ID="imgAnhMinhHoa" runat="server" ImageUrl='<%#  "/View/images/shop/" + Eval("AnhMinhHoa") %>' />
                                                            </asp:HyperLink>
                                                            <h2>
                                                                <asp:Label ID="lblGiaTien" runat="server" Text='<%# "$" + Eval("GiaTien") %>'></asp:Label></h2>
                                                            <p>
                                                                <asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                                                            </p>
                                                            <asp:LinkButton ID="btnThemGH" runat="server" CssClass="btn btn-default add-to-cart" CommandName="ThemGH" CommandArgument='<%# Eval("MaSP") %>'><i class="fa fa-shopping-cart"></i>Add to cart</asp:LinkButton>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <div class="item">
                                    <asp:Repeater ID="rptCarousel2" runat="server">
                                        <ItemTemplate>
                                            <div class="col-sm-4">
                                                <div class="product-image-wrapper">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center">
                                                            <asp:HyperLink ID="hplSanPham" runat="server" NavigateUrl='<%# "Shop_ProductDetails.aspx?MaSP=" + Eval("MaSP") %>'>
                                                                <asp:Image ID="imgAnhMinhHoa" runat="server" ImageUrl='<%#  "/View/images/shop/" + Eval("AnhMinhHoa") %>' />
                                                            </asp:HyperLink>
                                                            <h2>
                                                                <asp:Label ID="lblGiaTien" runat="server" Text='<%# "$" + Eval("GiaTien") %>'></asp:Label></h2>
                                                            <p>
                                                                <asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                                                            </p>
                                                            <asp:LinkButton ID="btnThemGH" runat="server" CssClass="btn btn-default add-to-cart" CommandName="ThemGH" CommandArgument='<%# Eval("MaSP") %>'><i class="fa fa-shopping-cart"></i>Add to cart</asp:LinkButton>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                            <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
                                <i class="fa fa-angle-left"></i>
                            </a>
                            <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </div>
                    </div>
                    <!--/recommended_items-->

                </div>
            </div>
        </div>
    </section>
</asp:Content>
