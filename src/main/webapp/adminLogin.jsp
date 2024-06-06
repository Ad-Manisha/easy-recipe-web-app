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

<title>Admin login</title>
<style>
body {
	font-family: Arial, sans-serif;
	background: white;
	margin: 0;
	padding: 0;
}

section {
	width: 100%;
	height: 14vh;
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


.my-div {
	height: 550px;
	width: 350px;
}
.my-div {
	font-size: 14px bold;
	padding: 5px;
	color: black;
	margin-top: 110px;
	dispplay: inline-block;
	text-align: left;
}

#user, #password {
	color: black;
	font-weight: bold;
	transition: color 0.3s ease-in-out;
	margin-left: 59px;
}

.search-input {
	position: relative;
	padding: 9px;
	border: 1px solid #ccc;
	border-radius: 4px 0 0 4px;
	font-size: 15px;
	width: 270px;
	height: 20px;
	margin-left: -150px;
}

.submit-button {
	width: 30%;
	background-color: #fac031;
	color: #fff;
	padding: 8px 10px;
	border: 1px ;
	border-radius: 0 4px 4px 0;
	cursor: pointer;
	font-size: 15px;
}

.submit-button:hover {
	background-color: green;
	border-color: #035922;
}

#my-head {
	margin-left: 10px;
}

#submit {
	margin-left: 220px;
	margin-bottom: 70px;
}

#reset {
	width: 60%;
	margin-left: 60px;
	margin-bottom: 70px;
}

#head {
	display:flex;
	align-items: center;
	justify-content:center;
	font-size: 55px;
}

#head span{
	color: #fac031;
	margin-left: 15px;
	font-family: mv boli;
}

#head span::after{
	content: '';
	width: 100%;
	height:2px;
	background: #fac031;
	display:block;
	position:relative;

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
				<li><a href="./adminLogin.jsp">Modify</a></li>
				<li><a href="gallery">Gallery</a></li>
			</ul>

			<div class="icon">
				<i class="fa-solid fa-heart"></i>
			</div>

		</nav>

	</section>
	
	<center>
		<%
		Object msg = request.getAttribute("message");
		if (msg != null) {
			out.println(msg.toString());
		}
		%>

		<h1 id="head">Admin <span>Login</span></h1>

		<div class="my-div">
			<form action="adminLogin" id="form" method=post>
				<table>
					<tr class="label">
						<td><i class="fa-solid fa-user-tie fa-lg" id="user"></i></td>
						<td><input type=text name=txtName class="search-input" required></td>
					</tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr class="label">
						<td><i class="fa-solid fa-lock fa-lg" id="password"></i></td>
						<td><input type=password name=txtPwd class="search-input" required></td>
					</tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr>
						<td><input type=submit value=login class="submit-button"
							id="submit"></td>
						<td><input type=reset class="submit-button" id="reset"></td>
					</tr>
				</table>
			</form>
		</div>
	</center>
</body>
</html>