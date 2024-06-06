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
<title>Recipes</title>
<style>
body {
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
	overflow-x: hidden;
	background: white;
	font-family: Arial, sans-serif;
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

.container {
	max-width: 800px;
	margin: 0 auto;
	padding: 0;
}

h1 {
	text-align: center;
	color: #444;
}

h3 {
	color: #444;
}

#desc {
	text-align: justify;
	color: #444;
}

#image {
	border-top-right-radius: 7px;
	border-top-left-radius: 7px;
	border-bottom-right-radius: 7px;
	border-bottom-left-radius: 7px;
	display: block;
	margin-left: auto;
	margin-right: auto;
	width: 75%;
}

.recipe {
	background-color: #fffdfd;
	height: 800px;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
	padding: 20px;
	margin-bottom: 20px;
}

.recipe:hover {
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.ingredient-list {
	margin-bottom: 10px;
}

.instructions {
	margin-bottom: 20px;
}

#time {
	font: 10px;
	color: #444;
}

#category {
	font: 15px;
	color: green;
}

#yt {
	color: #31708f;
	margin-left: 17rem;
}

#yt-link {
	color: #31708f;
	text-decoration: none;
	font-weight: bold;
	padding: 3px;
	margin-right: 10rem;
}

#yt-link:hover {
	text-decoration: underline;
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
				<li><a href="#Gallery">Gallery</a></li>
			</ul>

			<div class="icon">
				<i class="fa-solid fa-heart"></i>
			</div>

		</nav>

	</section>

	<div class="main-body">
		<div class="container">

			<h1>
				Recipe:
				<c:out value="${recipe.recipeName}" />
			</h1>
			<img src="<c:out value="${recipe.imageUrl}" />" id="image"
				class="center" /> <br>
			<h3 id="desc">
				<c:out value="${recipe.recipeDescription}" />
			</h3>
			<h5 id="time">
				<i class="fa-solid fa-clock fa-lg"></i> :
				<c:out value="${recipe.recipeTime}" />
			</h5>

			<h5 id="category">
				Category:
				<c:out value="${recipe.recipeCategory}" />
			</h5>


			<div class="recipe">

				<h3>Ingredients</h3>
				<br>
				<ul class="ingredient-list">
					<c:out value="${recipe.ingredientsName}" />
				</ul>
				<br> <br>

				<h3>Instructions</h3>
				<br>
				<ol class="instructions">
					<!--<c:out value="${recipe.instructions}" />-->


					<% String[] arr = (String[])request.getAttribute("steps");
					
						for(String s:arr){
							%>
					<li><%= s %></li>
					<% } %>



				</ol>
				<br> <br> <br> <i class="fa-brands fa-youtube fa-lg"
					id="yt"></i><a id="yt-link"
					href="<c:out value="${recipe.youtubeLink}" />">video link to
					youtube</a>
			</div>
		</div>