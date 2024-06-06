<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Registration</title>
<style>
body {
	font-family: Arial, sans-serif;
	background: white;
	margin: 0;
	padding: 0;
}

section {
	width: 100%;
	height: 15vh;
}

section nav {
	display: flex;
	justify-content: space-around;
	align-items: center;
	position: fixed;
	right: 0;
	left: 0;
	background: white;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
	z-index: 1000;
}

section nav .logo img {
	width: 110px;
	cursor: pointer;
	margin: 7px 0;
}

section nav ul {
	list-style: none;
}

section nav ul li {
	display: inline-block;
	margin: 0 15px;
}

section nav ul li a {
	text-decoration: none;
	color: #000;
	font-weight: 500;
	font-size: 17px;
	transition: 0.1s;
}

section nav ul li a::after {
	content: '';
	width: 0;
	height: 2px;
	background: #fac031;
	display: block;
	transition: 0.2s linear;
}

section nav ul li a:hover::after {
	width: 100%;
}

section nav ul li a:hover {
	color: #fac031;
}

section nav .icon i {
	font-size: 18px;
	color: #000;
	margin: 0 5px;
	cursor: pointer;
	transition: 0.3s;
}

section nav .icon i:hover {
	color: #fac031;
}

#back {
	margin-right: 990px;
	color: black;
	font-weight: bold;
	transition: color 0.3s ease-in-out;
}

#back:hover {
	color: #5b79bd;
}

.my-div {
	height: 550px;
	width: 350px;
}

.my-div label {
	font-size: 14px bold;
	padding: 10px;
	margin-bottom: 6px;
	dispplay: inline-block;
	text-align: left;
}

label, input {
	display: block;
	margin-left: 9px;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	border-bottom-left-radius: 5px;
	border-bottom-right-radius: 5px;
}

.search-input {
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px 0 0 4px;
	font-size: 16px;
	width: 400px;
}

.submit-button {
	width: 30%;
	background-color: #fac031;
	color: #fff;
	padding: 10px 15px;
	border: 1px;
	border-radius: 0 4px 4px 0;
	cursor: pointer;
	font-size: 14px;
	margin-left: 330px;
	margin-bottom: 70px;
}

.submit-button:hover {
	background-color: green;
}

#my-head {
	display:flex;
	align-items: center;
	justify-content:center;
	font-size: 55px;
}

#my-head span{
	color: #fac031;
	margin-left: 15px;
	font-family: mv boli;
}

#my-head span::after{
	content: '';
	width: 100%;
	height:2px;
	background: #fac031;
	display:block;
	position:relative;

}

#desc {
	margin-left: 10px;
}

#user, #email, #pwd1, #pwd2, #contact {
	color: #2e4578;
	font-weight: bold;
	transition: color 0.3s ease-in-out;
}

/* Styling for the alert box */
.alert {
	padding: 20px;
	background-color: #f44336; /* Red */
	color: white;
	margin-bottom: 15px;
	border-radius: 5px;
	display: none; /* Hide alert box by default */
}

/* Styling for the close button */
.closebtn {
	margin-left: 15px;
	color: white;
	font-weight: bold;
	float: right;
	font-size: 22px;
	line-height: 20px;
	cursor: pointer;
	transition: 0.3s;
}

/* Hover effect for close button */
.closebtn:hover {
	color: black;
}
</style>

</head>
<body>
	<section>
		<nav>
			<div class=" logo">
				<img src=".\Image\logo.png">

			</div>

			<ul>
				<li><a href="./index.jsp">Home</a></li>
				<li><a href="RecipeList">Recipes</a></li>
				<li><a href="#Gallery">Gallery</a></li>
			</ul>

			<div class="icon">
				<i class="fa-solid fa-heart"></i>
			</div>

		</nav>

	</section>
	<center>
		<%
		String message = (String) request.getAttribute("message");
		%>

		<%-- Check if the message is not null --%>
		<%
		if (message != null && !message.isEmpty()) {
		%>
		<script>
            // Display the message in an alert box
            alert("<%=message%>
			");
		</script>
		<%
		}
		%>

			<a href="./userLogin.jsp" id="back"><i
				class="fa-solid fa-circle-left fa-lg" aria-hidden="true"></i></a>
		<h1 id="my-head">User<span>Registration</span></h1>


		<div class="my-div">
			<br>
			<form action="register" method="post">
				<div>
					<label><i class="fa-solid fa-user fa-lg" id="user"></i></label> <input
						type="text" name="userName" placeholder="Name"
						class="search-input" required pattern="[A-Za-z0-9]{3,10}">
				</div>
				<br>

				<div>
					<label><i class="fa-solid fa-envelope fa-lg" id="email"></i></label>
					<input type="email" name="userEmail" placeholder="Email"
						class="search-input" required
						pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}">
				</div>
				<br>

				<div>
					<label><i class="fa-solid fa-lock fa-lg" id="pwd1"></i></label> <input
						type="password" name="userPwd1"
						placeholder="password  (min-6 char, at least one digit)"
						class="search-input" required pattern="(?=.*\d).{6,}">
				</div>
				<br>

				<div>
					<label><i class="fa-solid fa-unlock-keyhole fa-lg"
						id="pwd2"></i></label> <input type="password" name="userPwd2"
						placeholder="Repeat your password" class="search-input" required
						pattern="(?=.*\d).{6,}">
				</div>
				<br>

				<div>
					<label><i class="fa-solid fa-phone fa-lg" id="contact"></i></label>
					<input type="tel" name="userContact" placeholder="Contact Number"
						class="search-input" required>
				</div>
				<br> <br>
				<button type="submit" class="submit-button">Register</button>
			</form>


		</div>
	</center>


</body>
</html>