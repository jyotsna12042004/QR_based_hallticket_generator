
<%@page import="HallTicket.SQLconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
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
        <link href="css/table.css" rel="stylesheet">
    </head>
 <%
            if (request.getParameter("Sent") != null) {%>
        <script>alert('Request Sent');</script>  
        <%}
        %>
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
                    <a href="StudentHome.jsp" class="nav-item nav-link active">Home</a>
                    <a href="HallTicketRequest.jsp" class="nav-item nav-link">Hall Ticket Request</a>
                    <a href="HTRequestStatus.jsp" class="nav-item nav-link">Request Status</a>
                    <a href="DownloadHallTicket.jsp" class="nav-item nav-link">Download Hall Ticket</a>
                </div>
                <a href="logout.jsp" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Logout<i class="fa fa-lock ms-3"></i></a>
            </div>
        </nav>


        <!-- Header Start -->
        <div class="container-fluid bg-primary py-5 mb-5">
            <div class="container py-5">
                <div class="row justify-content-center">
                    <div class="col-lg-10 text-center">
                        <h1 class="display-3 text-white animated slideInDown">Hall Ticket Request</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb justify-content-center">
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->

<%
    String sid =session.getAttribute("sid").toString();
    String sname =session.getAttribute("sname").toString();
    String smail =session.getAttribute("smail").toString();
    String rollno =session.getAttribute("rollno").toString();
%>
        <!-- 404 Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title bg-white text-center text-primary px-3">Request</h6>
                    <h1 class="mb-5"></h1>
                </div>
                <div class="row">
                    <center><div class="col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                            <form action="HallTicketReq" method="post">
                                <div class="row g-3">
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <select class="form-control" id="subject" name="Year" placeholder="Name">
                                                 <option value="1st Year">1 Year</option>
                                                <option value="2nd Year">2 Year</option>
                                                <option value="3rd Year">3 Year</option>
                                                <option value="Final Year">Final Year</option>
                                            </select>
                                            <label for="subject">Select Year</label>
                                        </div>
                                    </div>
                                    <input type="hidden" name="studentid" value="<%=sid%>" >
                                    <input type="hidden" name="sname" value="<%=sname%>" >
                                    <input type="hidden" name="smail" value="<%=smail%>" >
                                    <input type="hidden" name="rollno" value="<%=rollno%>" >
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <select class="form-control" id="subject" name="Department" placeholder="Name">
                                                <option value="IT">IT</option>
                                                <option value="CSE">CSE</option>
                                                <option value="MCA">MCA</option>
                                            </select>
                                            <label for="subject">Select Department</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <select class="form-control" id="subject" name="Semester" placeholder="Name">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                            </select>
                                            <label for="subject">Select Semester</label>
                                        </div>
                                    </div>
                                    <h3>Exam Fees Status</h3>
                                    <div class="col-12">
                                        <label>Fees</label>&nbsp;&nbsp;&nbsp;
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="fees" value="Yes"  id="feesPaid" style="color: black" required="">
                                            <label class="form-check-label" for="feesPaid">Paid</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="fees" value="No" checked id="feesNotPaid" style="color: black" required="">
                                            <label class="form-check-label" for="feesNotPaid">Not Paid</label>
                                        </div>
                                    </div>

                                    <div class="col-12" id="referenceNumberGroup" style="display: none;">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">Reference Number</div>
                                        </div>
                                        <input type="text" class="form-control" value="#" id="referenceNumber" autocomplete="off" name="refn"  placeholder="#">
                                    </div>
                                    <div class="col-12">
                                        <button class="btn btn-primary w-100 py-3" type="submit">Request</button>
                                    </div>
                                </div>
                            </form>
                        </div></center>
                </div>
            </div>
        </div>
                                    
        
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
<script>
        const feesPaidRadio = document.getElementById('feesPaid');
        const feesNotPaidRadio = document.getElementById('feesNotPaid');
        const referenceNumberGroup = document.getElementById('referenceNumberGroup');

        feesPaidRadio.addEventListener('change', function() {
            referenceNumberGroup.style.display = this.checked ? 'block' : 'none';
        });

        feesNotPaidRadio.addEventListener('change', function() {
            referenceNumberGroup.style.display = this.checked ? 'none' : 'block';
        });
    </script>
        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>
</html>