<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MasterPageDraft.aspx.cs" Inherits="WebDienThoaiCDIO5.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Bootstrap -->
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <%-- CSS va JS rieng --%>
    <%-- CSS --%>
    <link href="css/MasterPage.css" rel="stylesheet" />
    <%-- JavaScript --%>
    <script src="js/MasterPage.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar sticky-top navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">
                        <img src="img/logo.jpg" alt="Logo" /></a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="navbar-item active"><a class="nav-link h3" href="#"><span class="glyphicon glyphicon-home"></span>&nbsp;Trang chủ</a></li>
                    <li class="navbar-item"><a class="nav-link h3" href="#"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;Tin tức</a></li>
                    <li class="navbar-item"><a class="nav-link h3" href="#"><span class="glyphicon glyphicon-briefcase"></span>&nbsp;Tuyển dụng</a></li>
                    <li class="navbar-item"><a class="nav-link h3" href="#"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;Giới thiệu</a></li>
                    <li class="navbar-item"><a class="nav-link h3" href="#"><span class="glyphicon glyphicon-wrench"></span>&nbsp;Bảo hành</a></li>
                    <li class="navbar-item"><a class="nav-link h3" href="#"><span class="glyphicon glyphicon-earphone"></span>&nbsp;Liên hệ</a></li>
                </ul>
                <ul class=" nav navbar-nav navbar-right" style="margin: auto">
                    <li>
                        <button type="button" data-toggle="modal" data-target="#loginModal" class="nav-link h3"><span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;Login</button></li>
                </ul>
                <div class="navbar-form navbar-right">
                    <button style="float: right" type="submit">Tìm kiếm</button>
                    <input style="float: right" type="text" placeholder="Nhập nội dung tìm kiếm" />
                </div>
            </div>
        </nav>
        <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width: 100%;">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
                <li data-target="#myCarousel" data-slide-to="4"></li>
                <li data-target="#myCarousel" data-slide-to="5"></li>
                <li data-target="#myCarousel" data-slide-to="6"></li>
                <li data-target="#myCarousel" data-slide-to="7"></li>
                <li data-target="#myCarousel" data-slide-to="8"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img class="d-block w-100" src="img/banners/banner1.png" alt="Hinh banner 1" />
                </div>
                <div class="item">
                    <img class="d-block w-100" src="img/banners/banner2.png" alt="Banner 2" />
                </div>
                <div class="item">
                    <img class="d-block w-100" src="img/banners/banner3.png" alt="Banner 3" />
                </div>
                <div class="item">
                    <img class="d-block w-100" src="img/banners/banner4.png" alt="Banner 4" />
                </div>
                <div class="item">
                    <img class="d-block w-100" src="img/banners/banner5.png" alt="Banner 5" />
                </div>
                <div class="item">
                    <img class="d-block w-100" src="img/banners/banner6.png" alt="Banner 6" />
                </div>
                <div class="item">
                    <img class="d-block w-100" src="img/banners/banner7.png" alt="Banner 7" />
                </div>
                <div class="item">
                    <img class="d-block w-100" src="img/banners/banner8.png" alt="Banner 8" />
                </div>
                <div class="item">
                    <img class="d-block w-100" src="img/banners/banner9.png" alt="Banner 9" />
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="loginModal" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <!-- Centered Tabs -->
                        <ul class="nav nav-pills nav-justified">
                            <li class="active h3"><a id="link1" title="Đăng Nhập" data-toggle="pill" href="#tab1">Đăng nhập</a></li>
                            <li class="h3"><a id="link2" title="Đăng Ký" data-toggle="pill" href="#tab2">Đăng ký</a></li>
                        </ul>
                    </div>
                    <div class="modal-body" style="text-align: center">
                        <div class="tab-content">
                            <div class="tab-pane fade in active" id="tab1">
                                <h1 class="display-4">Chào mừng bạn trở lại</h1>
                                <div class="container-fluid" style="display: flex; justify-content: center;">
                                    <label class="h3" for="uname"><span style="font-size: 50px" class="glyphicon glyphicon-user"></span>&nbsp;</label>
                                    <input class="h3" style="width: 80%; height: 50px" type="text" placeholder="Tên đăng nhập*" name="tdn" required="required" />
                                </div>
                                <br />
                                <div class="container-fluid" style="display: flex; justify-content: center;">
                                    <label class="h3" for="psw"><span style="font-size: 50px" class="glyphicon glyphicon-lock"></span>&nbsp;</label>
                                    <input class="h3" style="width: 80%; height: 50px" type="password" placeholder="Mật khẩu*" name="pw" required="required" />
                                </div>
                            </div>
                            <div class="tab-pane fade" id="tab2">
                                <h1 class="display-4">Đăng ký miễn phí</h1>
                                <div class="container-fluid" style="display: flex; justify-content: center;">
                                    <input class="h3" style="width: 500px; height: 50px; float: left; margin-right: 50px;" type="text" placeholder="Họ*" name="ho" required="required" />
                                    <input class="h3" style="width: 150px; height: 50px; float: right;" type="text" placeholder="Tên*" name="ten" required="required" />
                                </div>
                                <br />
                                <div class="container-fluid" style="display: flex; justify-content: center;">
                                    <input class="h3" style="width: 700px; height: 50px;" type="email" placeholder="Địa chỉ email*" name="email" required="required" />
                                </div>
                                <br />
                                <div class="container-fluid" style="display: flex; justify-content: center;">
                                    <input class="h3" style="width: 700px; height: 50px;" type="text" placeholder="Tên đăng nhập*" name="tdn_DK" required="required" />
                                </div>
                                <br />
                                <div class="container-fluid" style="display: flex; justify-content: center;">
                                    <input class="h3" style="width: 700px; height: 50px;" type="password" placeholder="Mật khẩu*" name="pw_DK" required="required" />
                                </div>
                                <br />
                            </div>
                        </div>
                    </div>
                    <button type="submit" style="font-size: 50px" class="btn btn-primary btn-block btn-lg">Tạo tài khoản</button>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                </div>
            </div>
        </div>
        <div class="container-fluid banner">
            <img src="img/banners/blackFriday.gif" alt="Banner gif" width="100%" />
        </div>
        <br />
        <div class="container-fluid text-center">
            <p>Content</p>
        </div>
        <footer>
            <div class="container-fluid text-center">
                <ul>
                    <li>Giao hàng hỏa tốc trong 1 giờ</li>
                    <li>Thanh toán linh hoạt: tiền mặt, visa / master, trả góp</li>
                    <li>Trải nghiệm sản phẩm tại nhà</li>
                    <li>Lỗi đổi tại nhà trong 1 ngày</li>
                    <li>Hỗ trợ suốt thời gian sử dụng.</li>
                    <li>Hotline:
                    <a href="tel:12345678" style="color: #288ad6;">1234.5678</a>
                    </li>
                </ul>
                <div class="copy-right">
                    <p>
                        <a href="index.html">SmartPhone Store</a> - All rights reserved © 2018 - Designed by
            <span style="color: #eee; font-weight: bold">TVT-group</span>
                    </p>
                </div>
            </div>
        </footer>
    </form>
</body>
</html>
