<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Hommie - Where you find your best roommie</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&family=Montserrat:wght@400;500;600;700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
	rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">



<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="lib/wow/wow.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/waypoints/waypoints.min.js"></script>
<script src="lib/counterup/counterup.min.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>
<script src="lib/tempusdominus/js/moment.min.js"></script>
<script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
<script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

<!-- Template Javascript -->
<script src="js/main.js"></script>

</head>

<body>
	<div class="container-xxl bg-dark p-4">
		<!-- Spinner Start -->
		<div id="spinner"
			class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
			<div class="spinner-border text-primary"
				style="width: 3rem; height: 3rem;" role="status">
				<span class="sr-only">Loading...</span>
			</div>
		</div>
		<!-- Spinner End -->

		<!-- Header Start -->
		<div class="container-fluid bg-dark px-0">
			<div class="row gx-0 justify-content-between p-3">
				<div class="col-lg-3 bg-dark d-none d-lg-block">
					<a href="home"
						class="navbar-brand w-100 h-100 m-0 p-0 d-flex align-items-center justify-content-center">
						<h1 class="m-0 text-primary text-uppercase">Hommie</h1>
					</a>
				</div>
				<div class="col-lg-5 px-5 text-end">
					<nav class="navbar navbar-expand-lg bg-dark navbar-dark p-3 p-lg-0">
						<a href="home" class="navbar-brand d-block d-lg-none">
							<h1 class="m-0 text-primary text-uppercase">Hommie</h1>
						</a>
						<button type="button" class="navbar-toggler"
							data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse justify-content-between"
							id="navbarCollapse">
							<div class="navbar-nav mr-auto py-0">
								<a href="home" class="nav-item nav-link active">Home</a> <a
									href="roomList" class="nav-item nav-link">Rooms</a> <a
									href="login.jsp" class="nav-item nav-link">Landlord</a>
								<c:if test="${not empty student}">
									<div class="nav-item dropdown">
										<a href="#" class="nav-link dropdown-toggle"
											data-bs-toggle="dropdown"> ${firstName}
											${lastName}</a>
										<div class="dropdown-menu rounded-0 m-0">
											<a href="logout.jsp" class="dropdown-item">Logout</a> <a
												href="wish-list.jsp" class="dropdown-item">Wish-list</a>
										</div>
									</div>
								</c:if>

								<c:if test="${not empty landlord}">
									<div class="nav-item dropdown">
										<a href="#" class="nav-link dropdown-toggle"
											data-bs-toggle="dropdown"> ${landlord.firstName}
											${landlord.lastName}</a>
										<div class="dropdown-menu rounded-0 m-0">
											<a href="logout.jsp" class="dropdown-item">Logout</a> <a
												href="wish-list.jsp" class="dropdown-item">Wish-list</a>
										</div>
									</div>
								</c:if>

								<c:if test="${empty student and empty landlord}">
									<div class="nav-item dropdown">
										<a href="#" class="nav-link dropdown-toggle"
											data-bs-toggle="dropdown"> Account</a>
										<div class="dropdown-menu rounded-0 m-0">
											<a href="register.jsp" class="dropdown-item">Register</a> <a
												href="login.jsp" class="dropdown-item">Login</a> <a
												href="logout.jsp" class="dropdown-item">Logout</a> <a
												href="wish-list.jsp" class="dropdown-item">Wish-list</a>
										</div>
									</div>
								</c:if>
							</div>
						</div>
					</nav>
				</div>
			</div>
		</div>

		<!-- Header End -->


		<!-- Carousel Start -->
		<div class="container-fluid p-0 mb-5">
			<div id="header-carousel" class="carousel slide"
				data-bs-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img class="w-100" src="img/carousel-1a.jpg" alt="Image">
						<div
							class="carousel-caption d-flex flex-column align-items-center justify-content-center">
							<div class="p-3" style="max-width: 700px;">
								<h1 class="display-3 text-white mb-4 animated slideInDown">Looking
									for a flatmate?</h1>
								<a href=""
									class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Landlord</a>
								<a href=""
									class="btn btn-light py-md-3 px-md-5 animated slideInRight">Student</a>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<img class="w-100" src="img/carousel-2a.jpg" alt="Image">
						<div
							class="carousel-caption d-flex flex-column align-items-center justify-content-center">
							<div class="p-3" style="max-width: 700px;">
								<h1 class="display-3 text-white mb-4 animated slideInDown">Finding
									a room near your campus?</h1>
								<a href=""
									class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Landlord</a>
								<a href=""
									class="btn btn-light py-md-3 px-md-5 animated slideInRight">Student</a>
							</div>
						</div>
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#header-carousel" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#header-carousel" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</div>
	</div>
	<!-- Carousel End -->


	<!-- Booking Start -->
	<div class="container-fluid booking pb-5 wow fadeIn"
		data-wow-delay="0.1s">
		<div class="container">
			<div class="bg-white shadow" style="padding: 35px;">
				<div class="row g-2">
					<div class="col-md-10">
						<div class="row g-2">
							<div class="col-md-3">
								<div class="date" id="date1" data-target-input="nearest">
									<input type="text" class="form-control datetimepicker-input"
										placeholder="Available date" data-target="#date1"
										data-toggle="datetimepicker" />
								</div>
							</div>

							<div class="col-md-3">
								<select class="form-select">
									<option selected>State</option>
									<option value="1">New South Wales</option>
									<option value="2">Victoria</option>
									<option value="3">Queensland</option>
									<option value="2">Western Australia</option>
									<option value="3">South Australia</option>
								</select>
							</div>
							<div class="col-md-3">
								<select class="form-select">
									<option selected>Weekly price</option>
									<option value="1">$100-$200</option>
									<option value="2">$200-$300</option>
									<option value="3">over $300</option>
								</select>
							</div>
						</div>
					</div>
					<div class="col-md-2">
						<button class="btn btn-primary w-100">Search</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Booking End -->


	<!-- About Start -->
	<div class="container-xxl py-5">
		<div class="container">
			<div class="row g-5 align-items-center">
				<div class="col-lg-6">
					<h6 class="section-title text-start text-primary text-uppercase">About
						Us</h6>
					<h1 class="mb-4">
						Welcome to <span class="text-primary text-uppercase">Hommie</span>
					</h1>
					<p class="mb-4">
						Australia's biggest share accommodation website for students. <br>
						Where thousands of landlords and students find their perfect
						rommies.
					</p>
					</p>
					<div class="row g-3 pb-4">
						<div class="col-sm-4 wow fadeIn" data-wow-delay="0.1s">
							<div class="border rounded p-1">
								<div class="border rounded text-center p-4">
									<i class="fa fa-hotel fa-2x text-primary mb-2"></i>
									<h2 class="mb-1" data-toggle="counter-up">9563</h2>
									<p class="mb-0">Rooms</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 wow fadeIn" data-wow-delay="0.3s">
							<div class="border rounded p-1">
								<div class="border rounded text-center p-4">
									<i class="fa fa-users-cog fa-2x text-primary mb-2"></i>
									<h2 class="mb-1" data-toggle="counter-up">8250</h2>
									<p class="mb-0">Students</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 wow fadeIn" data-wow-delay="0.5s">
							<div class="border rounded p-1">
								<div class="border rounded text-center p-4">
									<i class="fa fa-users fa-2x text-primary mb-2"></i>
									<h2 class="mb-1" data-toggle="counter-up">5698</h2>
									<p class="mb-0">Landlords</p>
								</div>
							</div>
						</div>
					</div>
					<a class="btn btn-primary py-3 px-5 mt-2" href="">Explore More</a>
				</div>
				<div class="col-lg-6">
					<div class="row g-3">
						<div class="col-6 text-end">
							<img class="img-fluid rounded w-75 wow zoomIn"
								data-wow-delay="0.1s" src="img/about-1.jpg"
								style="margin-top: 25%;">
						</div>
						<div class="col-6 text-start">
							<img class="img-fluid rounded w-100 wow zoomIn"
								data-wow-delay="0.3s" src="img/about-2.jpg">
						</div>
						<div class="col-6 text-end">
							<img class="img-fluid rounded w-50 wow zoomIn"
								data-wow-delay="0.5s" src="img/about-3.jpg">
						</div>
						<div class="col-6 text-start">
							<img class="img-fluid rounded w-75 wow zoomIn"
								data-wow-delay="0.7s" src="img/about-4.jpg">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- About End -->


	<!-- Room List Start -->
	<div class="container-xxl py-5">
		<div class="container">
			<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
				<h6 class="section-title text-center text-primary text-uppercase">Home
					Tour</h6>
				<h1 class="mb-5">
					Explore Our <span class="text-primary text-uppercase">Rooms</span>
				</h1>
			</div>
			<div class="row g-4">
				<c:forEach var="room" items="${roomList}">
					<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
						<div class="room-item shadow rounded overflow-hidden">
							<div class="position-relative">
								<img class="img-fluid" src="${room.image1Url}" alt="image-room">
								<small
									class="position-absolute start-0 top-100 translate-middle-y bg-primary text-white rounded py-1 px-3 ms-4">$${room.price}/Week</small>
							</div>
							<div class="p-4 mt-2">
								<div class="d-flex justify-content-between mb-3">
									<h5 class="mb-0">${room.title}</h5>
									<div class="ps-2"></div>
								</div>
								<div class="d-flex mb-3">
									<small class="border-end me-3 pe-3"><i
										class="fa fa-bed text-primary me-2"></i>${room.countBed} Bed</small> <small
										class="border-end me-3 pe-3"><i
										class="fa fa-bath text-primary me-2"></i> ${room.countBath}
										Bath</small> <small><i class="fa fa-wifi text-primary me-2"></i>Wifi</small>
								</div>
								<p class="text-body mb-3">${room.description}</p>
								<div class="d-flex justify-content-between">
									<a class="btn btn-sm btn-primary rounded py-2 px-4"
										href="room?roomId=${room.id}">View Detail</a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<!-- Room List End -->

	<!-- Testimonial Start -->
	<div class="container-xxl testimonial mt-5 py-5 bg-dark wow zoomIn"
		data-wow-delay="0.1s" style="margin-bottom: 90px;">
		<div class="container">
			<div class="owl-carousel testimonial-carousel py-5">
				<div
					class="testimonial-item position-relative bg-white rounded overflow-hidden">
					<p>Hommie is a game-changer for student housing! From seamless
						roommate matching to hassle-free rental agreements, it's the
						ultimate solution for stress-free living.</p>
					<div class="d-flex align-items-center">
						<img class="img-fluid flex-shrink-0 rounded"
							src="img/testimonial-1.jpg" style="width: 45px; height: 45px;">
						<div class="ps-3">
							<h6 class="fw-bold mb-1">Rose' W.</h6>
							<small>Monash University</small>
						</div>
					</div>
					<i
						class="fa fa-quote-right fa-3x text-primary position-absolute end-0 bottom-0 me-4 mb-n1"></i>
				</div>
				<div
					class="testimonial-item position-relative bg-white rounded overflow-hidden">
					<p>Thanks to Hommie, finding a compatible roommate and securing
						a great living space has never been easier. It's the go-to app for
						students looking for a convenient and reliable housing experience.</p>
					<div class="d-flex align-items-center">
						<img class="img-fluid flex-shrink-0 rounded"
							src="img/testimonial-2.jpg" style="width: 45px; height: 45px;">
						<div class="ps-3">
							<h6 class="fw-bold mb-1">Cam B.</h6>
							<small>Victoria University</small>
						</div>
					</div>
					<i
						class="fa fa-quote-right fa-3x text-primary position-absolute end-0 bottom-0 me-4 mb-n1"></i>
				</div>
				<div
					class="testimonial-item position-relative bg-white rounded overflow-hidden">
					<p>I have always strived to find reliable and responsible
						tenants for my properties. Hommie has made my life so much easier
						by providing a platform that connects me with trustworthy students
						seeking housing.</p>
					<div class="d-flex align-items-center">
						<img class="img-fluid flex-shrink-0 rounded"
							src="img/testimonial-3.jpg" style="width: 45px; height: 45px;">
						<div class="ps-3">
							<h6 class="fw-bold mb-1">Elon M.</h6>
							<small>Landlord</small>
						</div>
					</div>
					<i
						class="fa fa-quote-right fa-3x text-primary position-absolute end-0 bottom-0 me-4 mb-n1"></i>
				</div>
			</div>
		</div>
	</div>
	<!-- Testimonial End -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- Footer Start -->
	<div class="container-fluid bg-dark text-light footer wow fadeIn"
		data-wow-delay="0.1s">
		<div class="container pb-5">
			<div class="row g-5">
				<div class="col-md-6 col-lg-4">
					<div class="bg-primary rounded p-4">
						<a href="index.html"><h1
								class="text-white text-uppercase mb-3">Hommie</h1></a>
						<p class="text-white mb-0">
							Download <a class="text-dark fw-medium"
								href="https://htmlcodex.com/hotel-html-template-pro">Hommie</a>,
							ultimate platform for students in search of their ideal living
							companion. Find harmony in shared living and unlock the doors to
							lifelong friendships.
						</p>
					</div>
				</div>
				<div class="col-md-6 col-lg-3">
					<h6
						class="section-title text-start text-primary text-uppercase mb-4">Contact</h6>
					<p class="mb-2">
						<i class="fa fa-map-marker-alt me-3"></i>123 Beauty Street,
						Sydney, NSW
					</p>
					<p class="mb-2">
						<i class="fa fa-phone-alt me-3"></i>+61 2 8123 4567
					</p>
					<p class="mb-2">
						<i class="fa fa-envelope me-3"></i>info@hommie.com.au
					</p>
					<div class="d-flex pt-2">
						<a class="btn btn-outline-light btn-social" href=""><i
							class="fab fa-twitter"></i></a> <a
							class="btn btn-outline-light btn-social" href=""><i
							class="fab fa-facebook-f"></i></a> <a
							class="btn btn-outline-light btn-social" href=""><i
							class="fab fa-youtube"></i></a> <a
							class="btn btn-outline-light btn-social" href=""><i
							class="fab fa-linkedin-in"></i></a>
					</div>
				</div>
				<div class="col-lg-5 col-md-12">
					<div class="row gy-5 g-4">
						<div class="col-md-6">
							<h6
								class="section-title text-start text-primary text-uppercase mb-4">Company</h6>
							<a class="btn btn-link" href="">About Us</a> <a
								class="btn btn-link" href="">Contact Us</a> <a
								class="btn btn-link" href="">Privacy Policy</a> <a
								class="btn btn-link" href="">Terms & Condition</a> <a
								class="btn btn-link" href="">Support</a>
						</div>
						<div class="col-md-6">
							<h6
								class="section-title text-start text-primary text-uppercase mb-4">Services</h6>
							<a class="btn btn-link" href="">Landlords</a> <a
								class="btn btn-link" href="">Students</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="copyright">
				<div class="row">
					<div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
						&copy; <a class="border-bottom" href="#">Hommie Australia</a>, All
						Right Reserved.

						<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
						</a>
					</div>
					<div class="col-md-6 text-center text-md-end">
						<div class="footer-menu">
							<a href="">Home</a> <a href="">Cookies</a> <a href="">Help</a> <a
								href="">FQAs</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer End -->


	<!-- Back to Top -->
	<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
		class="bi bi-arrow-up"></i></a>
	</div>



</body>

</html>
</body>
</html>