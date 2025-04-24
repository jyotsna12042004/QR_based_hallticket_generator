

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="HallTicket.SQLconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
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
        <link href="css/table.css" rel="stylesheet">
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
        <nav class="navbar navbar-expand-lg bg-white navbar-light shadow  sticky-top p-0 navbar-fixed-top">
            <a href="#" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            </a>
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="COEHome.jsp" class="nav-item nav-link ">Home</a>
                    <a href="StudentApproval.jsp" class="nav-item nav-link active">Students Approval</a>
                    <a href="StudentDetails.jsp" class="nav-item nav-link">Students Details</a>
                    <a href="addSub.jsp" class="nav-item nav-link">Add Subjects</a>
                    <a href="HallTicketReq.jsp" class="nav-item nav-link">Hall Ticket Request </a>
                </div>
                <a href="logout.jsp" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Logout<i class="fa fa-lock ms-3"></i></a>
            </div>
        </nav>


    <!-- Header Start -->
    <div class="container-fluid bg-primary py-5 mb-5">
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-lg-10 text-center">
                    <h1 class="display-3 text-white animated slideInDown">Hall Ticket</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->


    <!-- 404 Start -->
    <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container text-center">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <div class="card">
            <div class="card-body">
                <h1 class="card-title text-center text-info ">Centurion University of Technology and Management</h1>
                <p class="card-text text-center py-4 fs-1">Exam Starts on : May 10, 2025</p>
                <div class="row">
                    <div class="col-md-4 text-center">
                        <!-- Placeholder for student photo -->
                        <img src="img/cutm-img2.png" alt="Student Photo" class="img-fluid rounded-circle student-photo" width="200px">
                    </div>
                    <div class="col-md-4 fs-4">
                        <p class=""><strong>Name: </strong> John Doe</p>
                        <p><strong>Roll Number: </strong> 12345</p>
                        <p><strong>Course: </strong> Computer Science</p>
                    </div>
                    <div class="col-md-4 text-center">
                        <!-- Placeholder for QR code -->
                        <img src="qrcode.png" alt="QR Code" class="img-fluid qr-code mt-n1 ">
                    </div>
                </div>
                <div class="mt-4">
                    <h2 class="text-center">Exam Schedule</h2>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Subject</th>
                                <th>Date</th>
                                <th>Time</th>
                                <th>Room</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Mathematics</td>
                                <td>September 11, 2023</td>
                                <td>9:00 AM - 12:00 PM</td>
                                <td>202</td>
                            </tr>
                            <tr>
                                <td>Physics</td>
                                <td>September 12, 2023</td>
                                <td>10:00 AM - 1:00 PM</td>
                                <td>205</td>
                            </tr>
                            <!-- Add more rows for additional subjects -->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 404 End -->

        
        
    
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
