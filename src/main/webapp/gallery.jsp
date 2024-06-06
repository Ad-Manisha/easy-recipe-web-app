<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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

.gallery {
	width: 100%;
	padding: 70px 0;
}

.gallery h1 {
	font-size: 55px;
	display: flex;
	align-items: center;
	justify-content: center;
}

.gallery h1 span {
	margin-left: 15px;
	color: #fac031;
	font-family: mv boli;
}

.gallery h1 span::after {
	content: '';
	width: 100%;
	height: 2px;
	background: #fac031;
	display: block;
	position: relative;
	bottom: 15px;
}

.gallery .gallery_image_box {
	width: 95%;
	margin: 10px auto;
	display: grid;
	grid-template-columns: 1fr 1fr 1fr;
	grid-gap: 8px;
}

.gallery .gallery_image_box .gallery_image {
	display: flex;
	align-items: center;
	justify-content: center;
	background: black;
}

.gallery .gallery_image_box .gallery_image img {
	width: 100%;
	transition: .3s;
}

.gallery .gallery_image_box .gallery_image:hover img {
	opacity: 0.4;
}

.gallery .gallery_image_box .gallery_image h3 {
	position: absolute;
	font-size: 35px;
	margin-bottom: 130px;
	color: #fac031;
	font-family: polo;
	z-index: 5;
	opacity: 0;
	transition: 0.3s;
}

.gallery .gallery_image_box .gallery_image:hover h3 {
	opacity: 1;
}

.gallery .gallery_image_box .gallery_image p {
	position: absolute;
	width: 400px;
	margin-top: 30px;
	text-align: center;
	color: white;
	line-height: 22px;
	opacity: 0;
	z-index: 5;
	transition: 0.3s;
}

.gallery .gallery_image_box .gallery_image:hover p {
	opacity: 1;
}

.gallery .gallery_image_box .gallery_image .gallery_btn {
	position: absolute;
	margin-top: 177px;
	color: #000;
	background: #fac031;
	padding: 7px 25px;
	text-decoration: none;
	opacity: 0;
	transform: translateY(45px);
	z-index: 5;
	transition: 0.3s;
}

.gallery .gallery_image_box .gallery_image:hover .gallery_btn {
	opacity: 1;
	transform: translateY(0);
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
				<li><a href="RecipeList">Recipes</a></li>
			</ul>

			<div class="icon">
				<i class="fa-solid fa-heart"></i>
			</div>

		</nav>

	</section>


	<div class="gallery" id="Gallery">
		<h1>
			Our <span>Gallery</span>
		</h1>

		<div class="gallery_image_box">
			<c:forEach items="${gallery}" var="recipe">
				<div class="gallery_image">
					<a href="recipes?id=<c:out value='${recipe.recipeId}'/>"> <img
						src="<c:out value="${recipe.imageUrl}"/>" />
					</a>

					<h3>
						<c:out value="${recipe.recipeName}" />
					</h3>
					<p>
						<c:out value="${recipe.recipeDescription}" />
					</p>

				</div>
			</c:forEach>

		</div>
	</div>
</body>
</html>