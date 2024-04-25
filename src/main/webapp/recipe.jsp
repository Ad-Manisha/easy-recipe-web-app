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
	background-color: #f4f4f4;
	font-family: Arial, sans-serif;
}

nav {
	display: flex;
	align-items: center;
}

#home {
	margin-top: 30px;
	margin-left: 40px;
	color: #2e4578;
	font-weight: bold;
	transition: color 0.3s ease-in-out;
}

#foods {
	margin-top: 30px;
	margin-left: 70px;
	color: #2e4578;
	font-weight: bold;
	transition: color 0.3s ease-in-out;
}

#home:hover, #foods:hover {
	color: #5b79bd;
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
	background-color: #fff;
	height : 600px;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
	padding: 20px;
	margin-bottom: 20px;
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
	<nav>
		<a href="./index.jsp" id="home"><i class="fa-solid fa-house fa-lg"
			aria-hidden="true"></i></a> <a href="RecipeList" id="foods"><i
			class="fa-solid fa-utensils fa-lg" aria-hidden="true"></i></a>
	</nav>

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
				<br><br>

				<h3>Instructions</h3>
				<br>
				<ol class="instructions">
					<c:out value="${recipe.instructions}" />
				</ol>
				<br><br><br>
				<i class="fa-brands fa-youtube fa-lg" id="yt"></i><a id="yt-link"
					href="<c:out value="${recipe.youtubeLink}" />">video link to
					youtube</a>
			</div>
		</div>