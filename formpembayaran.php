<?php
     session_start();
     include('connect.php');
     $sql = "SELECT * from menu where menu_id='1'";
     $res = mysqli_query($conn,$sql);
     $menu = mysqli_fetch_array($res);
 ?>

<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>CEMIL ME</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <!--        <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">-->


        <!--For Plugins external css-->
        <link rel="stylesheet" href="assets/css/animate/animate.css" />
        <link rel="stylesheet" href="assets/css/plugins.css" />

        <!--Theme custom css -->
        <link rel="stylesheet" href="assets/css/style.css">

        <!--Theme Responsive css-->
        <link rel="stylesheet" href="assets/css/responsive.css" />

        <script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
		<div class='preloader'><div class='loaded'>&nbsp;</div></div>
        <header id="home" class="navbar-fixed-top">
            <div class="header_top_menu clearfix">	
                <div class="container">
                    <div class="row">	
                        <div class="col-md-5 col-md-offset-3 col-sm-12 text-right">
                            <div class="call_us_text">
								<a href=""><i class="fa fa-clock-o"></i> Order Foods 24/7</a>
								<a href=""><i class="fa fa-phone"></i>0852 48464089</a>
							</div>
                        </div>

                    </div>			
                </div>
            </div>

            <!-- End navbar-collapse-->

            <div class="main_menu_bg">
                <div class="container"> 
                    <div class="row">
                        <nav class="navbar navbar-default">
                            <div class="container-fluid">
                                <!-- Brand and toggle get grouped for better mobile display -->
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <a class="navbar-brand our_logo" href="#"><img src="assets/images/logo.png" alt="" /></a>
                                </div>

                                <!-- Collect the nav links, forms, and other content for toggling -->
                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                                    <ul class="nav navbar-nav navbar-right">
                                        <li><a href="index.php#slider">Home</a></li>
                                        <li><a href="menu.php#portfolio">Menu</a></li>
                                        <li><a href="index.php#abouts">About Us</a></li>
                                        <li><a href="cart.php" class="booking">Cart</a></li>
                                    </ul>
                                </div><!-- /.navbar-collapse -->
                            </div><!-- /.container-fluid -->
                        </nav>
                    </div>
                </div>
            </div>	
        </header> <!-- End Header Section -->

        <section id="abouts" class="abouts">
            <div class="container" align="center">
                <div class="row">
                    <div class="abouts_content">
                        <h4>Form Pembayaran</h4>
                        <form action="#" id="formid">
                            <div class="form-group">
                                <input type="text" class="form-control" name="name" placeholder="Name" required ="" style="color:white">
                            </div>

                            <div class="form-group">
                                <input type="email" class="form-control" name="email" placeholder="Email" required="" style="color:white">
                            </div>

                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Mobile Phone Number" style="color:white">
                            </div>

                            <div class="form-group">
                                <textarea class="form-control" name="address" rows="3" placeholder="Address" style="color:white"></textarea>
                            </div>
                            <div class="col-md-4">
                            <div class="single_abouts_text wow slideInRight" data-wow-duration="2s">
                                <br>
                                <p><b>Nama Pesanan</b></p>
                            </div>
                            </div>
                             <div class="col-md-4">
                                <div class="single_abouts_text wow slideInRight" data-wow-duration="2s">
                                    <br>
                                    <p><b>Jumlah Pesanan</p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="single_abouts_text wow slideInRight" data-wow-duration="2s">
                                    <br>
                                    <p><b>Harga</p>
                                    <br>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="single_abouts_text wow slideInRight" data-wow-duration="2s">
                                    <br>
                                    <p><b>TOTAL</b></p>
                                    <br>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="single_abouts_text wow slideInRight" data-wow-duration="2s">
                                    <br>
                                    <p>total harganya</p>
                                    <br>
                                </div>
                            </div>
                            <a type="submit" action="" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Bayar</a><!-- pasang di php -->
                        </form> 
                    </div>
                </div>
            </div>
        </section>

        <!-- Modal -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <!-- <button type="button" class="close" data-dismiss="modal">×</button> -->
                        <h4><span class="glyphicon glyphicon-lock"></span>Congratulation!</h4>
                    </div>
                    <div class="modal-body">
                        <form role="form" action="menu.php">
                            <div class="form-group" align="center">
                                <label for="psw"><span ></span>Your orders have been recorded. Send the payment confirmation by clicking link that sent to your email.</label>
                                <!-- <input type="number" class="form-control" id="psw" placeholder="enter number of item" style="color:white"> -->
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <button type="submit" class="btn btn-block" >Back To Shop 
                                    <span class="glyphicon glyphicon-ok"></span>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

                                                                          

        <section id="footer_widget" class="footer_widget">
            <div class="container">
                <div class="row">
                    <div class="footer_widget_content text-center">
                        <div class="col-md-12">
                            <div class="single_widget wow fadeIn" data-wow-duration="2s">
                                <h3>Find Us</h3>

                                <div class="single_widget_info">
                                    <p>Dapur Emak Pede

                                        <span>Keputih Gang IC No. 15<br>Sukolilo, Surabaya, 60111
                                            <br> 0852 4846 4089</span>
                                        <span>Email: support@dpep.com</span></p>
                                </div>

                                <div class="footer_socail_icon">
                                    <a href="http://fb.com/anshpd"><i class="fa fa-facebook"></i></a>
                                    <a href="https://www.youtube.com/watch?v=SKUzsDdZ37s"><i class="fa fa-youtube"></i></a>
                                    <a href="http://instagram.com/nhdzhra"><i class="fa fa-camera"></i></a>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>



        <!--Footer-->
        <footer id="footer" class="footer">
            <div class="container text-center">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="copyright wow zoomIn" data-wow-duration="3s">
							<p>Made with <i class="fa fa-heart"></i> by <a href="https://www.youtube.com/watch?v=SKUzsDdZ37s">Purina | Hania | Anisah | Nahda</a>2017. All Rights Reserved</p>
						</div>
                    </div>
                </div>
            </div>
        </footer>
		
		<div class="scrollup">
			<a href="#"><i class="fa fa-chevron-up"></i></a>
		</div>		


        <script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
        <script src="assets/js/vendor/bootstrap.min.js"></script>

        <script src="assets/js/jquery-easing/jquery.easing.1.3.js"></script>
        <script src="assets/js/wow/wow.min.js"></script>
        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>
