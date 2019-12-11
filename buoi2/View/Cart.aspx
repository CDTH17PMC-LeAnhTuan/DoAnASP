<%@ Page Title="" Language="C#" MasterPageFile="~/View/GiaoDienChinh.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="buoi2.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="phdHead" runat="server">
    <style>
        .tongTien {
            margin: 0 50%;
            display: inline-block;
        }

        .btnThanhToan {
            width: 100px;
            height: 50px;
            color: white;
            min-width: 150px;
            border-color: orange;
            background: orange;
            border-radius: 35px;
        }

        h3 {
            display: inline-block;
            color: orange;
            padding-left: 2px;
        }

        span {
            font-size: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phdBody" runat="server">
    <section id="cart_items">
        <div class="container">
            <div class="breadcrumbs">
                <ol class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li class="active">Shopping Cart</li>
                </ol>
            </div>
            <div class="table-responsive cart_info">
                <table class="table table-condensed">
                    <thead>
                        <tr class="cart_menu">
                            <td class="image">Item</td>
                            <td class="description"></td>
                            <td class="price">Price</td>
                            <td class="quantity">Quantity</td>
                            <td class="total">Total</td>
                            <td></td>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptGiohang" runat="server" OnItemCommand="rptGiohang_ItemCommand">
                            <ItemTemplate>
                                <tr>
                                    <td class="cart_product">
                                        <%--<a href="">
                                            <img src="../View/images/cart/one.png" alt=""></a>--%>
                                        <asp:Image ID="imgAnhMinhHoa" runat="server" ImageUrl='<%#  "images/shop/" + Eval("AnhMinhHoa") %>' Width="110px" Height="110px"/>                                                
                                    </td>
                                    <td class="cart_description">
                                        <h4><asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label></h4>
                                        <p> <asp:Label ID="lblThongTin" runat="server" Text='<%# Eval("ThongTin") %>'></asp:Label></p>                                                              
                                    </td>
                                    <td class="cart_price">
                                        <%--<p>$59</p>--%>
                                        <p><asp:Label ID="lblGiaTien" runat="server" Text='<%# "$" + Eval("GiaTien") %>'></asp:Label></p>
                                    </td>
                                    <td class="cart_quantity">
                                        <div class="cart_quantity_button">
                                            <%--<a class="cart_quantity_up" href="#" >+ </a>--%>
                                            <%--<input class="cart_quantity_input" type="text" name="quantity" <%--value="1" autocomplete="off" size="2" value='<%# Eval("SoLuong") %>'>--%>
                                            <asp:TextBox ID="txtSoLuong" runat="server" CssClass="cart_quantity_input" Text='<%# Eval("SoLuong") %>'></asp:TextBox>
                                            <%--<a class="cart_quantity_down" href="#">- </a>--%>
                                        </div>
                                    </td>
                                    <td class="cart_total">
                                        <p class="cart_total_price"><asp:Label ID="lblThanhTien" runat="server" Text='<%# "$" + Eval("ThanhTien") %>'></asp:Label></p>
                                    </td>
                                    <td class="cart_delete">
                                        <%--<a class="cart_quantity_delete" href="#"><i class="fa fa-times"></i></a>--%>
                                        <asp:Button ID="btnCapNhatGH" runat="server" CausesValidation="False" CommandName="CapNhatGH" CommandArgument='<%# Eval("MaSP") %>' Text="Update" CssClass="btn btn-warning"  />

                                        <asp:Button ID="btnXoaGH" runat="server" CausesValidation="False" CommandName="XoaGH" CommandArgument='<%# Eval("MaSP") %>' Text="Delete" CssClass="btn btn-warning"  />

                                    </td>
                                </tr>

                              <%--  <tr>
                                    <td class="cart_product">
                                        <a href="">
                                            <img src="../View/images/cart/two.png" alt=""></a>
                                    </td>
                                    <td class="cart_description">
                                        <h4><a href="">Colorblock Scuba</a></h4>
                                        <p>Web ID: 1089772</p>
                                    </td>
                                    <td class="cart_price">
                                        <p>$59</p>
                                    </td>
                                    <td class="cart_quantity">
                                        <div class="cart_quantity_button">
                                            <a class="cart_quantity_up" href="">+ </a>
                                            <input class="cart_quantity_input" type="text" name="quantity" value="1" autocomplete="off" size="2">
                                            <a class="cart_quantity_down" href="">- </a>
                                        </div>
                                    </td>
                                    <td class="cart_total">
                                        <p class="cart_total_price">$59</p>
                                    </td>
                                    <td class="cart_delete">
                                        <a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="cart_product">
                                        <a href="">
                                            <img src="../View/images/cart/three.png" alt=""></a>
                                    </td>
                                    <td class="cart_description">
                                        <h4><a href="">Colorblock Scuba</a></h4>
                                        <p>Web ID: 1089772</p>
                                    </td>
                                    <td class="cart_price">
                                        <p>$59</p>
                                    </td>
                                    <td class="cart_quantity">
                                        <div class="cart_quantity_button">
                                            <a class="cart_quantity_up" href="">+ </a>
                                            <input class="cart_quantity_input" type="text" name="quantity" value="1" autocomplete="off" size="2">
                                            <a class="cart_quantity_down" href="">- </a>
                                        </div>
                                    </td>
                                    <td class="cart_total">
                                        <p class="cart_total_price">$59</p>
                                    </td>
                                    <td class="cart_delete">
                                        <a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>
                                    </td>
                                </tr>--%>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
                <%-- <asp:GridView ID="grvGioHang" runat="server" CssClass="table table-striped table-hover" AutoGenerateColumns="false" GridLines="None">
                    <Columns>
                        <asp:BoundField DataField="TenSP" HeaderText="Name" />
                        <asp:BoundField DataField="GiaTien" HeaderText="Price" />
                        <asp:BoundField DataField="SoLuong" HeaderText="Quality" />                     
                        <asp:BoundField DataField="ThanhTien" HeaderText="Total Price"/>                       
                    </Columns>
                </asp:GridView>--%>
                <div class="tongTien col-lg-12">
                    <span>Total Price: </span><asp:Label ID="lblTongTien" runat="server" CssClass="cart_total_price" Text="0"></asp:Label><h3>$</h3>
                    <br />
                    <asp:Button ID="btnThanhToan" runat="server" CssClass="btnThanhToan" Text="Check Out" OnClick="btnThanhToan_Click" />
                </div>
            </div>
        </div>
    </section>
    <!--/#cart_items-->

    <section id="do_action">
        <div class="container">
            <div class="heading">
                <h3>What would you like to do next?</h3>
                <p>Choose if you have a discount code or reward points you want to use or would like to estimate your delivery cost.</p>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="chose_area">
                        <ul class="user_option">
                            <li>
                                <input type="checkbox">
                                <label>Use Coupon Code</label>
                            </li>
                            <li>
                                <input type="checkbox">
                                <label>Use Gift Voucher</label>
                            </li>
                            <li>
                                <input type="checkbox">
                                <label>Estimate Shipping & Taxes</label>
                            </li>
                        </ul>
                        <ul class="user_info">
                            <li class="single_field">
                                <label>Country:</label>
                                <select>
                                    <option>United States</option>
                                    <option>Bangladesh</option>
                                    <option>UK</option>
                                    <option>India</option>
                                    <option>Pakistan</option>
                                    <option>Ucrane</option>
                                    <option>Canada</option>
                                    <option>Dubai</option>
                                </select>

                            </li>
                            <li class="single_field">
                                <label>Region / State:</label>
                                <select>
                                    <option>Select</option>
                                    <option>Dhaka</option>
                                    <option>London</option>
                                    <option>Dillih</option>
                                    <option>Lahore</option>
                                    <option>Alaska</option>
                                    <option>Canada</option>
                                    <option>Dubai</option>
                                </select>

                            </li>
                            <li class="single_field zip-field">
                                <label>Zip Code:</label>
                                <input type="text">
                            </li>
                        </ul>
                        <a class="btn btn-default update" href="">Get Quotes</a>
                        <a class="btn btn-default check_out" href="">Continue</a>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="total_area">
                        <ul>
                            <li>Cart Sub Total <span>$59</span></li>
                            <li>Eco Tax <span>$2</span></li>
                            <li>Shipping Cost <span>Free</span></li>
                            <li>Total <span>$61</span></li>
                        </ul>
                        <a class="btn btn-default update" href="">Update</a>
                        <a class="btn btn-default check_out" href="">Check Out</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/#do_action-->
</asp:Content>
