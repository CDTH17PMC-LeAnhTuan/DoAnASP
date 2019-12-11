<%@ Page Title="" Language="C#" MasterPageFile="~/View/GiaoDienChinh.Master" AutoEventWireup="true" CodeBehind="Shop_Product.aspx.cs" Inherits="buoi2.Shop_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="phdHead" runat="server">
    <style>
        img {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phdBody" runat="server">
    <!--  Quảng cáo -->
    <section id="advertisement">
        <div class="container">
            <img src="../View/images/shop/advertisement.jpg" alt="" />
        </div>
    </section>
    <!--  Quảng cáo -->
    <!-- Thông tin sản phẩm -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div class="left-sidebar">
                        <h2>Category</h2>
                        <div class="panel-group category-products" id="accordian">
                            <!--category-productsr-->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordian" href="#sportswear">
                                            <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                            Sportswear
                                        </a>
                                    </h4>
                                </div>
                                <div id="sportswear" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul>
                                            <li><a href="">Nike </a></li>
                                            <li><a href="">Under Armour </a></li>
                                            <li><a href="">Adidas </a></li>
                                            <li><a href="">Puma</a></li>
                                            <li><a href="">ASICS </a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordian" href="#mens">
                                            <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                            Mens
                                        </a>
                                    </h4>
                                </div>
                                <div id="mens" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul>
                                            <li><a href="">Fendi</a></li>
                                            <li><a href="">Guess</a></li>
                                            <li><a href="">Valentino</a></li>
                                            <li><a href="">Dior</a></li>
                                            <li><a href="">Versace</a></li>
                                            <li><a href="">Armani</a></li>
                                            <li><a href="">Prada</a></li>
                                            <li><a href="">Dolce and Gabbana</a></li>
                                            <li><a href="">Chanel</a></li>
                                            <li><a href="">Gucci</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordian" href="#womens">
                                            <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                            Womens
                                        </a>
                                    </h4>
                                </div>
                                <div id="womens" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul>
                                            <li><a href="">Fendi</a></li>
                                            <li><a href="">Guess</a></li>
                                            <li><a href="">Valentino</a></li>
                                            <li><a href="">Dior</a></li>
                                            <li><a href="">Versace</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a href="#">Kids</a></h4>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a href="#">Fashion</a></h4>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a href="#">Households</a></h4>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a href="#">Interiors</a></h4>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a href="#">Clothing</a></h4>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a href="#">Bags</a></h4>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a href="#">Shoes</a></h4>
                                </div>
                            </div>
                        </div>
                        <!--/category-productsr-->

                        <div class="brands_products">
                            <!--brands_products-->
                            <h2>Brands</h2>
                            <div class="brands-name">
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href=""><span class="pull-right">(50)</span>Acne</a></li>
                                    <li><a href=""><span class="pull-right">(56)</span>Grüne Erde</a></li>
                                    <li><a href=""><span class="pull-right">(27)</span>Albiro</a></li>
                                    <li><a href=""><span class="pull-right">(32)</span>Ronhill</a></li>
                                    <li><a href=""><span class="pull-right">(5)</span>Oddmolly</a></li>
                                    <li><a href=""><span class="pull-right">(9)</span>Boudestijn</a></li>
                                    <li><a href=""><span class="pull-right">(4)</span>Rösch creative culture</a></li>
                                </ul>
                            </div>
                        </div>
                        <!--/brands_products-->

                        <div class="price-range">
                            <!--price-range-->
                            <h2>Price Range</h2>
                            <div class="well">
                                <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2"><br />
                                <b>$ 0</b> <b class="pull-right">$ 600</b>
                            </div>
                        </div>
                        <!--/price-range-->

                        <div class="shipping text-center">
                            <!--shipping-->
                            <img src="../View/images/home/shipping.jpg" alt="" />
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
                                                      <%-- <asp:LinkButton ID="btnWishList" runat="server"><i class="fa fa-plus-square"></i>Add to wishlist</asp:LinkButton>--%>
                                                </li>
                                  
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <ul class="pagination">
                            <li class="active"><a href="">1</a></li>
                            <li><a href="">2</a></li>
                            <li><a href="">3</a></li>
                            <li><a href="">&raquo;</a></li>
                        </ul>
                    </div>
                    <!--features_items-->
                </div>
            </div>
        </div>
    </section>
    <!-- Thông tin sản phẩm -->
</asp:Content>
