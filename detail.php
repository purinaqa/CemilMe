<?php
     session_start();
     include('connect.php');
     $id=$_GET['id'];
     $sql = "SELECT * FROM menu WHERE m_ID='$id'";
     // echo $sql;
     $res = mysqli_query($conn,$sql);
     $menu = mysqli_fetch_array($res);
     //echo $menu;
     //die();
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
        <link rel="stylesheet" type="text/css" href="style.css">
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

        <section id="features" class="features">
            <div class="slider_overlay">
                <div class="container">
                    <div class="row">
                        <div class="main_features_content_area  wow fadeIn" data-wow-duration="3s" bg>
                            <div class="col-md-12">
                                <div class="col-md-6 wow slideInLeft" data-wow-duration="1s" >
                                    <img src="assets/images/<?php echo $menu['m_gambar'] ?>">
                                </div>
                                <div class="col-md-6 wow slideInRight" data-wow-duration="1s">
                                    <div class="single_features_text">
                                        <h4>Cemilan</h4>
                                        <p name="id" type="hidden" value="<?php echo $menu['m_ID'] ?>"></p>
                                        <h3 value="<?php echo $menu['m_nama'] ?>"><?php echo $menu['m_nama'] ?> </h3>
                                        <span class="text-warning" >&#9733; &#9733; &#9733; &#9733; &#9734;</span>
                                        <p>Rp. <?php echo $menu['m_harga'] ?></p>
                                        <p><?php echo $menu['m_detail'] ?></p>
                                        <a  class="btn btn-primary" data-toggle="modal" data-target="#myModal">buy</a>
                                    </div>
                                </div>
                            </div>
                        </div>
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
                        <button type="button" class="close" data-dismiss="modal">×</button>
                        <h4><span class="glyphicon glyphicon-lock"></span>I want to buy this!</h4>
                    </div>
                    <div class="modal-body">
                        <form id="toCart" action="tocart.php" method="POST" role="form">
                            <div class="form-group" align="center">
                                <label for="psw"><span class="glyphicon glyphicon-shopping-cart"></span>How Many? <?php echo $menu['m_nama'] ?></label>
                                <input name="id" type="hidden" value="<?php echo $menu['m_ID'] ?>">
                                <input type="number" class="form-control" id="psw" name="jmlItem" placeholder="enter number of item" style="color:white">
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    
                                    <a type="submit" style="color:black"><button class="btn btn-block" onclick="send('toCart')" >Go To Cart
                                    <span class="glyphicon glyphicon-ok"></span>
                                    </button></a>
                                    
                                </div>
                                
                            </div>
                        </form>
                            <div class="row">
                                <div class="col-sm-12">
                                    <a href="menu.php" name="id" style="color:black"><button class="btn btn-block" >Back To Shop
                                    <span class="glyphicon glyphicon-ok"></span>
                                    </button></a>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>

        <section id="abouts" class="abouts">
            <div class="container">
                <div class="row">
                    <div class="abouts_content">
                        <div class="single_abouts_text wow slideInRight" data-wow-duration="1s">
                            <div class="card card-outline-secondary my-4">
                                <h4 class="card-header">
                                Product Reviews
                                </h4>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
                                    <small class="text-muted">Posted by Anonymous on 3/1/17</small>
                                    <hr>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
                                    <small class="text-muted">Posted by Anonymous on 3/1/17</small>
                                    <hr>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
                                    <small class="text-muted">Posted by Anonymous on 3/1/17</small>
                                    <hr>
                                    <a class="btn btn-primary" data-toggle="modal" data-target="#commentModal">Leave a Review</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Modal -->
        <div class="modal fade" id="commentModal" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">×</button>
                        <h4><span class="glyphicon glyphicon-lock"></span>Give your feedback!</h4>
                    </div>
                    <div class="modal-body" align="center">
                        <form role="form">

                            <div class="form-group" align="center">
                                <div class="col-md-12">
                                    <div class="col-md-6">
                                        <label for="comment"><span class="glyphicon glyphicon-user"></span>Your Comment</label>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="rate">
                                            <input type="radio" id="star5" name="rate" value="5" /><label for="star5" title="text">5 stars</label>
                                            <input type="radio" id="star4" name="rate" value="4" /><label for="star4" title="text">4 stars</label>
                                            <input type="radio" id="star3" name="rate" value="3" /><label for="star3" title="text">3 stars</label>
                                            <input type="radio" id="star2" name="rate" value="2" /><label for="star2" title="text">2 stars</label>
                                            <input type="radio" id="star1" name="rate" value="1" /><label for="star1" title="text">1 star</label>
                                        </div>
                                    </div>
                                </div>
                                <input type="text" class="form-control" id="comment" placeholder="email" style="color:white">
                                <input rows="3" type="text" class="form-control" id="comment" placeholder="type your comment here.." style="color:white">
                            </div>
                            
                            <button type="submit" class="btn btn-block" data-dismiss="modal" data-toggle="modal" href="detail.php">Submit 
                            <span class="glyphicon glyphicon-ok"></span>
                            </button>
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
