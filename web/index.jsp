
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Hall Ticket Automation with Integrated QR Codes</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">


    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    </head>

    <body>
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
             <a href="#" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
                <h2 class="m-0 text-primary"><i class="fa fa-book me-3"></i>Hall Ticket Automation</h2>
            </a>
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="index.jsp" class="nav-item nav-link active">Home</a>
                    <a href="Invigilator.jsp" class="nav-item nav-link">Invigilator</a>
                    <a href="COE.jsp" class="nav-item nav-link">Controller of Examination</a>
                    <a href="Students.jsp" class="nav-item nav-link">Students</a>
                </div>
                <a href="Reg.jsp" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Join Now<i class="fa fa-arrow-right ms-3"></i></a>
            </div>
        </nav>
        <!-- Navbar End -->


        <!-- Carousel Start -->
        <div class="container-fluid p-0 mb-5">
            <div class="owl-carousel header-carousel position-relative">
                <div class="owl-carousel-item position-relative">
                    <img class="img-fluid" src="img/cutm-img4.png" alt="">
                    <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center">
                        <div class="container">
                            <div class="row justify-content-start">
                                <div class="col-sm-10 col-lg-8">
<!--                                    <h5 class="text-primary text-uppercase mb-3 animated slideInDown">Management</h5> -->
                                    <h1 class="display-3 text-white animated slideInDown halltext">Hall Ticket Automation with Integrated QR Codes</h1>
                                    <style>
                                    
                                        .halltext{
                                            
                                            text-shadow:  0px 0px 8px black;
                                        }
                                        
                                    </style>
                                    <p class="fs-5 text-white mb-4 pb-2"></p>
                                    <!--
                                    <a href="#" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Read More</a>
                                    <a href="#" class="btn btn-light py-md-3 px-md-5 animated slideInRight">Join Now</a>
                                    -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="owl-carousel-item position-relative">
                    <img class="img-fluid" src="img/cutm-img5.png" alt="">
                    <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center">
                         <div class="container">
                            <div class="row justify-content-start">
                                <div class="col-sm-10 col-lg-8">
                                   <!-- <h5 class="text-primary text-uppercase mb-3 animated slideInDown">Management</h5>
                                    <h1 class="display-3 text-white animated slideInDown">Hall Ticket Automation with Integrated QR Codes</h1>
                                   --> 
                                   <p class="fs-5 text-white mb-4 pb-2"></p>
                                   <!--
                                    <a href="#" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Read More</a>
                                    <a href="#" class="btn btn-light py-md-3 px-md-5 animated slideInRight">Join Now</a>
                                   -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="owl-carousel-item position-relative">
                    <img class="img-fluid cutmsnap" src="img/cutm-6.jpg" alt="" >
                    <style>
                        .cutmsnap{
                            height: 790px;
                        }
                        </style>
                    
                    <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center">
                         <div class="container">
                            <div class="row justify-content-start">
                                <div class="col-sm-10 col-lg-8">
                                   <!-- <h5 class="text-primary text-uppercase mb-3 animated slideInDown">Management</h5>
                                    <h1 class="display-3 text-white animated slideInDown">Hall Ticket Automation with Integrated QR Codes</h1>
                                   --> 
                                   <p class="fs-5 text-white mb-4 pb-2"></p>
                                   <!--
                                    <a href="#" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Read More</a>
                                    <a href="#" class="btn btn-light py-md-3 px-md-5 animated slideInRight">Join Now</a>
                                   -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
        <!-- Carousel End -->


        <!-- Service Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-4">
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="service-item text-center pt-3">
                            <div class="p-4">
                                <i class="fa fa-3x fa-graduation-cap text-primary mb-4"></i>
                                <h5 class="mb-3">Skilled Instructors</h5>
                                <p></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="service-item text-center pt-3">
                            <div class="p-4">
                                <i class="fa fa-3x fa-globe text-primary mb-4"></i>
                                <h5 class="mb-3">Online Classes</h5>
                                <p></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="service-item text-center pt-3">
                            <div class="p-4">
                                <i class="fa fa-3x fa-home text-primary mb-4"></i>
                                <h5 class="mb-3">Home Projects</h5>
                                <p></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="service-item text-center pt-3">
                            <div class="p-4">
                                <i class="fa fa-3x fa-book-open text-primary mb-4"></i>
                                <h5 class="mb-3">Book Library</h5>
                                <p></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Service End -->


        <!-- About Start -->

        <!-- Testimonial End -->


        
 <!-- Footer Start -->
            <!-- Cutm-Footer Starts-->     
    <footer class="pt-3">
        <div class="finalwow">
            <div class="copy d-flex flex-column flex-md-row justify-content-between align-items-center text-center text-md-start mx-3 py-5">
              <p class="mb-2 mb-md-0 text-light cutmpic">
                Copyright &copy; 2025 All rights reserved  <a href="https://cutmap.ac.in/" target="_blank" class="text-decoration-none text-warning"><b>Centurion University</b> </a>
              </p>
              <ul class="list-unstyled d-flex flex-wrap justify-content-center justify-content-md-end mb-0 finalicons">
               <li class="fs-4">
                <a href="https://www.facebook.com/CenturionUniversityAndhraPradesh/" class="text-decoration-none" target="_blank">
                    <i class="fa-brands fa-facebook text-light"></i>
                </a>                  
                <a href="https://www.instagram.com/centurion_university_ap/" class="text-decoration-none" target="_blank">
                    <i class="fa-brands fa-instagram text-light"></i>
                </a>
                <a href="https://www.youtube.com/@CUTMAndhraPradesh/search" class="text-decoration-none"  target="_blank">
                    <i class="fa-brands fa-youtube text-light"></i>
                </a>
                <a href="https://in.linkedin.com/in/centurion-university-andhra-pradesh-5050062a6" class="text-decoration-none"  target="_blank">
                    <i class="fa-brands fa-linkedin-in text-light"></i>
                </a>
               </li>
              </ul>
            </div>
          </div>
    </footer>
    <!-- Cutm-Footer Ends-->      


        <!-- Footer End -->

        <style>
            

        .finalwow{
            background-color: #0f6461 !important;
        }
        .finalwow a:hover{
            color: #ee1c24!important;
        }
        .finalicons a i:hover{
            color: #ee1c24 !important;
        }   
        </style>
        
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"/>
        
        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>

</html>