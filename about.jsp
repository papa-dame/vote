<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@page import="java.sql.ResultSet"%>
<%@page import="app.pk.connexion"%>
<%@page import="java.sql.Connection"%> 
    
    
<!doctype html>
<html lang="en">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
       

        <meta name="description" content="">
        <meta name="author" content="">

        <title>Tooplate's Little Fashion - About Page</title>

        <!-- CSS FILES -->
        <link rel="preconnect" href="https://fonts.googleapis.com">

        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;300;400;700;900&display=swap" rel="stylesheet">

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-icons.css" rel="stylesheet">

        <link rel="stylesheet" href="css/slick.css"/>

        <link href="css/tooplate-little-fashion.css" rel="stylesheet">
        
<!--

Tooplate 2127 Little Fashion

https://www.tooplate.com/view/2127-little-fashion

-->
    </head>
    
    <body>
    
       <%    
Connection con=connexion.seconnecter();
ResultSet rs=con.createStatement().executeQuery("SELECT * FROM personne WHERE type_p ='candidat'");

%>
    
    
    
    

        <section class="preloader">
            <div class="spinner">
                <span class="sk-inner-circle"></span>
            </div>
        </section>
    
        <main>

            <nav class="navbar navbar-expand-lg">
                <div class="container">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <a class="navbar-brand" href="index.html">
                        <strong><span>Little</span> Fashion</strong>
                    </a>

                    <div class="d-lg-none">
                        <a href="sign-in.html" class="bi-person custom-icon me-3"></a>

                        <a href="product-detail.html" class="bi-bag custom-icon"></a>
                    </div>

                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav mx-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="index.html">Home</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link active" href="about.html">Story</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="products.html">Products</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="faq.html">FAQs</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="contact.html">Contact</a>
                            </li>
                        </ul>

                        <div class="d-none d-lg-block">
                            <a href="sign-in.html" class="bi-person custom-icon me-3"></a>

                            <a href="product-detail.html" class="bi-bag custom-icon"></a>
                        </div>
                    </div>
                </div>
            </nav>

            <header class="site-header section-padding-img site-header-image">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-12 header-info">
                            <h1>
                                <span class="d-block text-primary">Company</span>
                                <span class="d-block text-dark">Fashion</span>
                            </h1>
                        </div>
                    </div>
                </div>

                <img src="images/header/businesspeople-meeting-office-working.jpg" class="header-image img-fluid" alt="">
            </header>

            <section class="team section-padding">
                <div class="container">
                    <div class="row">

                        <div class="col-12">
                            <h2 class="mb-5">Nos <span>Candidats</span></h2>
                        </div>
                        
                        <%while(rs.next()){ %>

                         <div class="col-lg-4 col-12 mb-3">
                            <div class="product-thumb">
                                <a href="infocandidat.jsp?id_p=<%=rs.getInt(1) %>">
                                    <img src="images/<%=rs.getString(14) %>" class="img-fluid product-image" alt="">
                                </a>

                                <div class="product-top d-flex">
                                    <span class="product-alert me-auto"><%="candidat de "+rs.getString(12) %></span>

                                    
                                </div>

                                <div class="product-info d-flex">
                                    <div>
                                        <h5 class="product-title mb-0">
                                            <a href="infocandidat.jsp?id_p=<%=rs.getInt(1) %>" class="product-title-link"><%=rs.getString(3)+" "+rs.getString(2) %></a>
                                        </h5>

                                        <p class="product-p"></p>
                                    </div>

                                   
                                </div>
                            </div>
                        </div>

            
                       <%} %>

                       

                    </div>
                </div>
            </section>

            <section class="testimonial section-padding">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-9 mx-auto col-11">
                            <h2 class="text-center">Customer love, <br> <span>Little</span> Fashion</h2>

                            
                        </div>

                    </div>
                </div>
            </section>

        </main>

        <footer class="site-footer">
            <div class="container">
                <div class="row">

                    <div class="col-lg-3 col-10 me-auto mb-4">
                        <h4 class="text-white mb-3"><a href="index.html">Little</a> Fashion</h4>
                        <p class="copyright-text text-muted mt-lg-5 mb-4 mb-lg-0">Copyright © 2022 <strong>Little Fashion</strong></p>
                        <br>
                        <p class="copyright-text">Designed by <a href="https://www.tooplate.com/" target="_blank">Tooplate</a></p>
                    </div>

                    <div class="col-lg-5 col-8">
                        <h5 class="text-white mb-3">Sitemap</h5>

                        <ul class="footer-menu d-flex flex-wrap">
                            <li class="footer-menu-item"><a href="about.html" class="footer-menu-link">About</a></li>

                            <li class="footer-menu-item"><a href="#" class="footer-menu-link">Products</a></li>

                            <li class="footer-menu-item"><a href="#" class="footer-menu-link">Privacy policy</a></li>

                            <li class="footer-menu-item"><a href="#" class="footer-menu-link">FAQs</a></li>

                            <li class="footer-menu-item"><a href="#" class="footer-menu-link">Contact</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-3 col-4">
                        <h5 class="text-white mb-3">Social</h5>

                        <ul class="social-icon">

                            <li><a href="#" class="social-icon-link bi-youtube"></a></li>

                            <li><a href="#" class="social-icon-link bi-whatsapp"></a></li>

                            <li><a href="#" class="social-icon-link bi-instagram"></a></li>

                            <li><a href="#" class="social-icon-link bi-skype"></a></li>
                        </ul>
                    </div>

                </div>
            </div>
        </footer>

        <!-- TEAM MEMBER MODAL -->
        

        <!-- TEAM MEMBER MODAL -->
        <div class="modal fade" id="kelly" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg">
                <div class="modal-content border-0">
                    <div class="modal-header flex-column">
                        <h3 class="modal-title" id="exampleModalLabel">Kelly Lisa</h3>

                        <h6 class="text-muted">Global, Head of Marketing</h6>

                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>

                    <div class="modal-body">
                        <h5 class="mb-4">Over three years in business had the chance to work on variety of projects, with companies</h5>

                        <div class="row mb-4">
                            <div class="col-lg-6 col-12">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                            </div>

                            <div class="col-lg-6 col-12">
                                <p>Incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse commodo viverra.</p>
                            </div>
                        </div>

                        <ul class="social-icon">
                            <li class="me-3"><strong>Where to find?</strong></li>

                            <li><a href="#" class="social-icon-link bi-facebook"></a></li>

                            <li><a href="#" class="social-icon-link bi-instagram"></a></li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>

        <!-- TEAM MEMBER MODAL -->
        <div class="modal fade" id="marie" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg">
                <div class="modal-content border-0">
                    <div class="modal-header flex-column">
                        <h3 class="modal-title" id="exampleModalLabel">Marie Sam</h3>

                        <h6 class="text-muted">Founder & CEO</h6>

                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>

                    <div class="modal-body">
                        <h5 class="mb-4">Over three years in business had the chance to work on variety of projects, with companies</h5>

                        <div class="row mb-4">
                            <div class="col-lg-6 col-12">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                            </div>

                            <div class="col-lg-6 col-12">
                                <p>Incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse commodo viverra.</p>
                            </div>
                        </div>

                        <ul class="social-icon">
                            <li class="me-3"><strong>Where to find?</strong></li>

                            <li><a href="#" class="social-icon-link bi-twitter"></a></li>

                            <li><a href="#" class="social-icon-link bi-linkedin"></a></li>

                            <li><a href="#" class="social-icon-link bi-envelope"></a></li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>

        <!-- JAVASCRIPT FILES -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/Headroom.js"></script>
        <script src="js/jQuery.headroom.js"></script>
        <script src="js/slick.min.js"></script>
        <script src="js/custom.js"></script>

    </body>
</html>
    