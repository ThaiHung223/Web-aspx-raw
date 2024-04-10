<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sanpham.aspx.cs" Inherits="ThaiBaHung_0633.sanpham" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="UTF-8">
    <title>Thiết kế trang web</title>
    <link rel="stylesheet" href="style.css">
    <script>
        function updateProduct() {
            var productName = document.getElementById("<%= txtTenSanPham.ClientID %>").value;
            var notification = document.getElementById("notification");
            notification.textContent = "Thông tin sản phẩm " + productName + " cập nhật thành công.";
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="menu">
            <div class="menu-item">Trang chủ</div>
            <div class="menu-item">Giới thiệu</div>
            <div class="menu-item">Sản phẩm</div>
            <div class="menu-item">Liên hệ</div>
            <div class="search-container">
                <input type="text" class="search-input" placeholder="Tìm kiếm...">
                <button class="search-button">Tìm kiếm</button>
            </div>
        </div>

        <div class="main-content">
            <div class="banner">
                <img src="Banner.png" alt="Banner">
            </div>

            <div class="split">
                <div class="left">
                    <h2 style="color: blue;">DANH MỤC SẢN PHẨM</h2>
                    <ul class="product-list">
                        <li class="product-item">Máy lạnh</li>
                        <li class="product-item">Tủ lạnh</li>
                        <li class="product-item">Máy giặt</li>
                        <li class="product-item">TV</li>
                    </ul>
                </div>
                <div class="right">
                    <h2 style="color: blue;">THÔNG TIN SẢN PHẨM</h2>
                    <div class="form-row">
                        <label for="ddlLoaiSanPham">Loại Sản Phẩm</label>
                        <asp:DropDownList ID="ddlLoaiSanPham" runat="server">
                            <asp:ListItem Text="Máy giặt" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Tủ lạnh" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Tivi" Value="3"></asp:ListItem>
                            <asp:ListItem Text="Máy lạnh" Value="4"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-row">
                        <label for="txtTenSanPham">Tên Sản Phẩm</label>
                        <asp:TextBox ID="txtTenSanPham" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-row">
                        <label for="txtDonGia">Đơn Giá</label>
                        <asp:TextBox ID="txtDonGia" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-row">
                        <label for="txtSoLuong">Số Lượng</label>
                        <asp:TextBox ID="txtSoLuong" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-row">
                        <label for="lblGiamGia">Giảm Giá</label>
                        <div class="tick-container">
                            <input type="checkbox" id="checkbox1" />
                            <label for="checkbox1" class="tick-label">10%</label>
                        </div>
                        <div class="tick-container">
                            <input type="checkbox" id="checkbox2" />
                            <label for="checkbox2" class="tick-label">5%</label>
                        </div>
                        <div class="tick-container">
                            <input type="checkbox" id="checkbox3" />
                            <label for="checkbox3" class="tick-label">Không giảm</label>
                        </div>
                    </div>
                    <div class="form-row">
                        <label for="lblHienThi">Hiển Thị</label>
                        <div class="tick-container">
                            <input type="checkbox" id="checkbox4" />
                            <label for="checkbox4" class="tick-label"></label>
                        </div>
                    </div>
                    <div class="form-row">
                        <label for="lblCapNhat"></label>
                        <asp:Button ID="btnCapNhat" runat="server" Text="Cập nhật" OnClientClick="updateProduct()" />
                    </div>
                    <div class="form-row">
                        <label for="notification"></label>
                        <span id="notification"></span>
                    </div>
                </div>
            </div>
    </form>
</body>
</html>
