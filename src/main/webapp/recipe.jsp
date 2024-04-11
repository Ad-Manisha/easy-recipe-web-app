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

.recipe {
	position: absolute;
	top: 5px;
	left: 400px;
}

.recipe img {
	border-top-right-radius: 7px;
	border-top-left-radius: 7px;
	border-bottom-right-radius: 7px;
	border-bottom-left-radius: 7px;
	margin-top: 40px;
	width: 450px;
	height: 300px;
}

.recipe-content {
	padding: 25px;
}

.recipe-title {
	font-size: 3rem;
	margin-bottom: 0.75rem;
	margin-left: 6rem;
}

.recipe-time, .recipe-category {
	font-size: 60px bold;
	margin-bottom: 0.75rem;
	color: black;
}

.recipe-description {
	font-size: 2rem bold;
	margin-bottom: 0.75rem;
	margin-left: 4rem;
	color: #666;
}

.recipe-category {
	font-size: 0.75rem bold;
	margin-bottom: 0.75rem;
	color: green;
}

.recipe-text {
	color: #666;
}

.text {
	font-size: 0.75rem bold;
	margin-bottom: 0.75rem;
	color: brown;
}

li {
	font-size: 0.75rem;
	margin-bottom: 0.75rem;
	color: black;
}

ol li {
	list-style-type: upper-roman;
}

ul li {
	list-style-type: circle;
}

#yt-link {
	color: #31708f;
	text-decoration: none;
	font-weight: bold;
	margin-left: 10rem;
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
		<div class="recipe">

			<img src="<c:out value="${recipe.imageUrl}"/>" />

			<div class="recipe-content">
				<h3 class="recipe-title">
					<c:out value="${recipe.recipeName}" />
				</h3>
				<h4 class="recipe-description">
					<c:out value="${recipe.recipeDescription}" />
				</h4>
				<br>
				<h5 class="recipe-time">
					Time:
					<c:out value="${recipe.recipeTime}" />
				</h5>
				<h5 class="recipe-category">
					Category:
					<c:out value="${recipe.recipeCategory}" />
				</h5>
				<p class="recipe-text">
				<h5 class="text">Ingredients:</h5>

				<ol>
					<li>2 cup X</li>
					<li>1/2 tablespoon Y</li>
					<li>1/2 cup Z</li>
				</ol>
				<br>
				<h5 class="text">Preparation :</h5>

				<ul>
					<li>Step 1:</li>
					<li>Step 2:</li>
					<li>Step 3:</li>
				</ul>

				<a id="yt-link"
					href="https://www.youtube.com/watch?v=uygb9O-MDPw&pp=ygUnYmVzdCByZWNpcGUgY2hhbm5lbCBmb3IgY2hpY2tlbiBiaXJ5YW5p">video
					link to youtube</a>
			</div>
		</div>

	</div>


</body>
</html>