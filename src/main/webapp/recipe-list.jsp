<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
body {
	margin: 0px;
	padding: 0px;
}

.main-body {
	padding: 0px;
	display: flex;
	flex-wrap: wrap;
	font-family: Arial, sans-serif;
	background: white;
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

.search-container {
	display: flex;
	align-items: center;
	justify-content: center;
	background: white;
	height: 20vh;
}

.search-input {
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 4px 0 0 4px;
	font-size: 16px;
}

.search-button {
	background-color: #fac031;
	color: #fff;
	padding: 10px 15px;
	border: 1px;
	border-radius: 0 4px 4px 0;
	cursor: pointer;
	font-size: 16px;
}

.search-button:hover {
	background-color: green;
}

.menu {
	width: 100%;
	padding: 70px 0;
}

.menu h1 {
	font-size: 50px;
	display: flex;
	align-items: center;
	justify-content: center;
	margin-bottom: 25px;
	margin-top: -30px;
}

.menu h1 span {
	color: #fac031;
	margin-left: 15px;
	font-family: mv boli;
}

.menu h1 span::after {
	content: '';
	width: 100%;
	height: 2px;
	background: #fac031;
	display: block;
	position: relative;
	bottom: 15px;
}

.menu .menu_box {
	width: 95%;
	margin: 0 auto;
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr;
	grid-gap: 15px;
}

.menu .menu_box .menu_card {
	width: 325px;
	height: 480px;
	padding-top: 10px;
	margin-bottom: 20px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

.menu .menu_box .menu_card:hover {
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.menu .menu_box .menu_card .menu_image {
	width: 300px;
	height: 245px;
	margin: 0 auto;
	overflow: hidden;
}

.menu .menu_box .menu_card .menu_image img {
	width: 100%;
	height: 100%;
	object-fit: cover;
	object-position: center;
	transition: 0.3s;
}

.menu .menu_box .menu_card .menu_image:hover img {
	transform: scale(1.1);
}

.menu .menu_box .menu_card .small_card {
	width: 45px;
	height: 50px;
	float: right;
	position: relative;
	top: -240px;
	right: -8px;
	opacity: 0;
	border-radius: 7px;
	transition: 0.3s;
}

.menu .menu_box .menu_card:hover .small_card {
	position: relative;
	top: -240px;
	right: 20px;
	opacity: 1;
}

.menu .menu_box .menu_card .small_card i {
	font-size: 25px;
	display: flex;
	align-items: center;
	justify-content: center;
	line-height: 50px;
	color: #000;
	cursor: pointer;
	text-shadow: 0 0 6px #000;
	transition: 0.2s;
}

.menu .menu_box .menu_card .small_card i:hover {
	color: #fac031;
}

.menu .menu_box .menu_card .menu_info h2 {
	width: 60%;
	text-align: center;
	margin: 10px auto 10px auto;
	font-size: 25px;
	color: black;
}

.menu .menu_box .menu_card .menu_info p {
	text-align: center;
	margin-top: 8px;
	line-height: 25px;
}

.menu .menu_box .menu_card .menu_info .menu_icon_star {
	color: #fac031;
	text-align: center;
	margin: 10px 0 10px 0;
}

.menu .menu_box .menu_card .menu_info .menu_icon_feedback {
	color: #040505;
	text-align: center;
	margin: 12px 0 5px 0;
	padding: 18px;
}

.menu .menu_box .menu_card .menu_info .menu_icon_feedback:hover {
	cursor: pointer;
	transition: 0.3s;
	color:blue;
}
</style>
<title>Recipe List</title>
</head>
<body>

	<section>
		<nav>
			<div class=" logo">
				<img src=".\Image\logo.png">

			</div>

			<ul>
				<li><a href="./index.jsp">Home</a></li>
				<li><a href="./adminLogin.jsp">Modify</a></li>
				<li><a href="gallery">Gallery</a></li>
			</ul>

			<div class="icon">
				<i class="fa-solid fa-heart"></i>
			</div>

		</nav>

	</section>

	<div class="search-container">
		<form action="search" method="post">
			<input type="text" class="search-input"
				placeholder="Search ingredients..." name="ingredient"> <input
				type="submit" class="search-button" />
		</form>

	</div>

	<div class="menu" id="Menu">
		<h1>
			Our <span>Menu</span>
		</h1>
		<div class="menu_box">
			<c:forEach items="${recipeList}" var="recipe">
				<div class="menu_card">
					<div class="menu_image">
						<a href="recipes?id=<c:out value='${recipe.recipeId}'/>"> <img
							src="<c:out value="${recipe.imageUrl}"/>" />
						</a>
					</div>

					<div class="small_card">
						<i class="fa-solid fa-heart"></i>
					</div>

					<div class="menu_info">
						<h2>
							<c:out value="${recipe.recipeName}" />
						</h2>
						<p>
							<c:out value="${recipe.recipeDescription}" />
						</p>
						<div class="menu_icon_star">
							<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star-half-stroke"></i>
						</div>
						<div class="menu_icon_feedback">
							<a href="./userLogin.jsp"><i class="fa-regular fa-thumbs-up fa-2x "></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="./userLogin.jsp"><i  class="fa-regular fa-thumbs-down fa-2x "></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="./userLogin.jsp"><i
								class="fa-regular fa-comment fa-2x "></i></a>
						</div>

					</div>
				</div>
			</c:forEach>

		</div>
	</div>
</body>
</html>