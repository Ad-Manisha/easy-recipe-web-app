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
<title>Admin Login Success</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background:white;
	
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


#name {
	margin-left:15px;
	color: black;
	text-decoration:none;
}

.my-div {
	height: 550px;
	width: 350px;
}

#name {
	color: black;
}

nav a:hover, .my-btn:hover {
	color: #20353b;
}

#my-head {
	font-size: 55px;
	display: flex;
	align-items:center;
	justify-content: center;
}

#my-head span{
	margin-left: 15px;
	color: #fac031;
	font-family: mv boli;
}

#head span::after{
	content: '';
	width: 100%;
	height:2px;
	background: #fac031;
	position: relative;
	display:block;

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
				<li><a href="adminRec-list">Update</a></li>
				<li><a href="./viewComments.jsp">View Comments</a></li>
				<li><a href="#Gallery">Gallery</a></li>
				<a href="#" id="name"><i
				class="fa-solid fa-user-tie fa-lg" id="name"></i> <%=session.getAttribute("name")%>
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

		<h1 id="my-head">
			Welcome <span><%=session.getAttribute("name")%>
			!!</span>
		</h1>
	</center>

</body>
</html>