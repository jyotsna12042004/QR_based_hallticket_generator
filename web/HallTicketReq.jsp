
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
            if (request.getParameter("Approved") != null) {%>
        <script>alert('Approved');</script>  
        <%}
        %>
         <%
            if (request.getParameter("Rejected") != null) {%>
        <script>alert('Rejected');</script>  
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


       <nav class="navbar navbar-expand-lg bg-white navbar-light shadow  sticky-top p-0 navbar-fixed-top">
            <a href="#" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            </a>
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="COEHome.jsp" class="nav-item nav-link ">Home</a>
                    <a href="StudentApproval.jsp" class="nav-item nav-link">Students Approval</a>
                    <a href="StudentDetails.jsp" class="nav-item nav-link">Students Details</a>
                    <a href="addSub.jsp" class="nav-item nav-link">Add Subjects</a>
                    <a href="HallTicketReq.jsp" class="nav-item nav-link active">Hall Ticket Request </a>
                </div>
                <a href="logout.jsp" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Logout<i class="fa fa-lock ms-3"></i></a>
            </div>
        </nav>


    <!-- Header Start -->
    <div class="container-fluid bg-primary py-5 mb-5">
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-lg-10 text-center">
                    <h1 class="display-3 text-white animated slideInDown">Hall Ticket Requests</h1>
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
                    <table id="naresh" style="margin: auto;padding: 10px;">
                                <tr>
                                    <th>Id</th>
                                    <th>Name</th>
                                     <th>Year</th>
                                    <th>Department</th>
                                    <th>Semester</th>
                                    <th>Fees Status</th>
                                    <th>Reference Number</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                                <%
                                    Connection con = SQLconnection.getconnection();
                                    Statement st = con.createStatement();
                                    try {
                                        ResultSet rs = st.executeQuery("Select * from hall_ticket_requests where htstatus='No'");
                                        while (rs.next()) {
                                %>
                                <tr>
                                    <td><%=rs.getString("id")%></td>
                                    <td><%=rs.getString("sname")%></td>
                                    <td><%=rs.getString("year")%></td>
                                    <td><%=rs.getString("department")%></td>
                                    <td><%=rs.getString("semester")%></td>
                                    <td><%=rs.getString("fees_status")%></td>
                                    <td><%=rs.getString("reference_number")%></td>
                                    <td><%=rs.getString("htstatus")%></td>
                                    <td><a href="HTApprove?reqid=<%=rs.getString("id")%>&smail=<%=rs.getString("smail")%>"  class="btn btn-success" style="color: white">&nbsp;Approve</a>&nbsp;&nbsp;
                                        <a href="HTReject?uid=<%=rs.getString("id")%>"   class="btn btn-danger" style="color: white">&nbsp;Reject</a></td>
                                </tr>
                                <%                                        }
                                    } catch (Exception ex) {
                                        ex.printStackTrace();
                                    }

                                %>
                            </table>
                </div>
            </div>
        </div>
    </div>
                            
                            
    <!-- 404 End -->
        
     <!-- Examcell Announcements Starts -->
    <section id="examcell">
        <div class="container mt-4">
            <div class="alert alert-info text-center border border-dark">
              <marquee behavior="scroll" direction="left" id="marqueeText">
                📢️ <b class="text-danger">CUTM-AP EXAMINATION CELL</b> - Important Announcements! |
                For inquiries or support, email: examcell@cutmap.ac.in
              </marquee>
            </div>
          </div>
    </section>
    <!-- Examcell Announcements Ends -->
    
     <script>

        const marqueeText = document.getElementById('marqueeText');

        marqueeText.addEventListener('mouseenter', () => {
        marqueeText.stop();
        });

        marqueeText.addEventListener('mouseleave', () => {
        marqueeText.start();
        });
    </script>
    
     <style> 
        .alert-info{
            background-color:  #00bed1 !important;
            color: white !important;
        }
        
            .webLinks .bg-light:hover {
            background-color: #00bed1 !important;
            box-shadow: 0 2px 3px black !important;
    }

    .webLinks .bg-light:hover h5 a {
        color: white !important;
}


    </style>
    
    
    
    
    <!-- Cutm-links Cards  Starts -->
    <section id="cutm-links">
        <div class="container my-5">
            <div class="row g-4 text-center">
                <!-- CUTM iCloudEMS -->
                <div class="col-12 col-md-4 webLinks">
                    <div class="d-flex flex-column align-items-center justify-content-center p-4 border rounded-0 shadow-sm h-100 bg-light">
                        <img src="img/cutm-img1.png" alt="" height="190px" class="mb-3">
                        <h5 class="fw-bold "> <a href="https://cutm.icloudems.com/corecampus/index.php" class="text-decoration-none"  target="_blank">Visit CUTM iCloudEMS <i class="fa-solid fa-arrow-up-right-from-square"></i></a></h5>
                    </div>
                </div>
                <!-- Centurion University -->
                <div class="col-12 col-md-4 webLinks">
                    <div class="d-flex flex-column align-items-center justify-content-center p-4 border rounded-0 shadow-sm h-100 bg-light ">
                         <img src="img/cutm-img2.png" alt="" height="150px">
                        <h5 class="fw-bold mt-5">  <a href="https://cutmap.ac.in/" class="text-decoration-none"   target="_blank">Visit Centurion University <i class="fa-solid fa-arrow-up-right-from-square"></i></a></h5>
                    </div>
                </div>
                <!-- CUTM Courseware -->
                <div class="col-12 col-md-4 webLinks">
                    <div class="d-flex flex-column align-items-center justify-content-center p-4 border rounded-0 shadow-sm h-100 bg-light">
                         <img src="img/cutm-img3.jpg" alt="" height="150px">
                        <h5 class="fw-bold mt-5"><a href="https://courseware.cutm.ac.in/"  class="text-decoration-none"  target="_blank">Visit CUTM Course Ware <i class="fa-solid fa-arrow-up-right-from-square"></i></a></h5>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Cutm-links Cards  Ends -->
    
    
       <!-- Cutm-Student List Starts -->
    <section id="courses" class="container">
        <h1 class="text-center text-danger my-5 bg-warning border border-dark StudentList">
            Student List
        </h1>
        <div class="table-responsive">
            <table class="table table-bordered table-hover table-striped table-light">
                <thead class="bg-primary text-white">
                    <tr>
                        <th class="bg-info">S.NO</th>
                        <th class="bg-info">REGISTRATION NUMBER</th>
                        <th class="bg-info">NAME</th>
                        <th class="bg-info">SEMESTER</th>
                        <th class="bg-info">SECTION</th>
                        <th class="bg-info">DOMAIN</th>
                        <th class="bg-info">ATTENDANCE PERCENTAGE</th>
                    </tr>
                </thead>
                 <tbody id="exam">

                        <tr class="bg-primary">
                        <td>1</td>
                        <td>211801340001</td>
                        <td>S. ASHOK KUMAR</td>
                        <td>8</td>
                        <td>C</td>
                        <td>CSW</td>
                        <td>75</td>
                    </tr> 
                    
                      <tr class="bg-primary">
                        <td>2</td>
                        <td>211801340002</td>
                        <td>V. BHANU SRITEJA</td>
                        <td>8</td>
                        <td>C</td>
                        <td>CSW</td>
                        <td>80</td>
                    </tr> 
                    
                      <tr class="bg-primary">
                        <td>3</td>
                        <td>211801340003</td>
                        <td>K. BHANU SURYA PRAKASH</td>
                        <td>8</td>
                        <td>C</td>
                        <td>CSW</td>
                        <td>77</td>
                    </tr> 
                    
                      <tr class="bg-primary">
                        <td>4</td>
                        <td>211801340004</td>
                        <td>S. GOWTHAM</td>
                        <td>8</td>
                        <td>C</td>
                        <td>CSW</td>
                        <td>75</td>
                    </tr> 
                    
                      <tr class="bg-primary">
                        <td>5</td>
                        <td>211801340005</td>
                        <td>G. INDU</td>
                        <td>8</td>
                        <td>C</td>
                        <td>CSW</td>
                        <td>45</td>
                    </tr> 
                      <tr class="bg-primary">
                        <td>6</td>
                        <td>211801340007</td>
                        <td>SK. NAGUR BASHA</td>
                        <td>8</td>
                        <td>C</td>
                        <td>CSW</td>
                        <td>69</td>
                    </tr> 
                    
                     <tr class="bg-primary">
                        <td>7</td>
                        <td>211801340008</td>
                        <td>Y. NARAYANA RAO</td>
                        <td>8</td>
                        <td>C</td>
                        <td>CSW</td>
                        <td>90</td>
                    </tr> 

                     <tr class="bg-primary">
                        <td>8</td>
                        <td>211801340097</td>
                        <td>K. RANGA DHARMA TEJA</td>
                        <td>8</td>
                        <td>C</td>
                        <td>CSW</td>
                        <td>75</td>
                    </tr> 

                     <tr class="bg-primary">
                        <td>9</td>
                        <td>2118013400011</td>
                        <td>P. SAI VIKAS</td>
                        <td>8</td>
                        <td>C</td>
                        <td>CSW</td>
                        <td>95</td>
                    </tr> 


                     <tr class="bg-primary">
                        <td>10</td>
                        <td>2118013400013</td>
                        <td>J. SRIPRIYA</td>
                        <td>8</td>
                        <td>C</td>
                        <td>CSW</td>
                        <td>88</td>
                    </tr> 
                    
                     <tr class="bg-primary">
                        <td>11</td>
                        <td>211801340014</td>
                        <td>A. VIKAS</td>
                        <td>8</td>
                        <td>C</td>
                        <td>CSW</td>
                        <td>70</td>
                    </tr> 
                    
                </tbody>
            </table>
        </div>
    </section>
    <!-- Cutm-Student List Ends -->

   <style>           
        th.bg-info{
            background-color: #00bed1 !important;
        }

    </style>
    
    

    
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