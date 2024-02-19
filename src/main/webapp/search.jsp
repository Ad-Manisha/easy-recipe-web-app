<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
body{
	margin: 0;
	padding: 0;
}
.main-body {
	display: flex;
	flex-wrap: wrap;
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

.search-container {
	display: flex;
	align-items: center;
	justify-content: center;
	background-color: #f4f4f4;
	height: 10vh;
}

.search-input {
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 4px 0 0 4px;
	font-size: 16px;
}

.search-button {
	background-color: tomato;
	color: #fff;
	padding: 10px 15px;
	border: 1px solid tomato;
	border-radius: 0 4px 4px 0;
	cursor: pointer;
	font-size: 16px;
}

.search-button:hover {
	background-color: #f55e07;
	border-color: #bf2b0b;
}

.card {
	border: 1px solid #ddd;
	border-radius: 8px;
	margin: 20px;
	overflow: hidden;
	transition: box-shadow 0.3s;
	width: 300px;
	background-color: #fff;
	
}

.card:hover {
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.card img {
	width: 100%;
	height: 200px;
	object-fit: cover;
}

.card-content {
	padding: 15px;
}

.card-title {
	font-size: 1.25rem;
	margin-bottom: 0.75rem;
}

.card-text {
	color: #666;
	text-align: left;
}

a {
	color: #31708f;
	text-decoration: none;
	font-weight: bold;
}

a:hover {
	text-decoration: underline;
}

p {
	text-align: right;
}
</style>
<title>Recipe List</title>
</head>
<body>

	<div class="search-container">
		<form action="/search">
			<input type="text" class="search-input" placeholder="Search..." name="recipe_name">
			<input type="submit" class="search-button"/>
		</form>

	</div>

	<div class="main-body">
		
			<div class="card">
			<a href="recipes?id=<c:out value='${recipe.recipeId}'/>">
			
				<img src="<c:out value="${recipe.imageUrl}"/>" />
			</a>
				
				<div class="card-content">
					<h5 class="card-title">
						<c:out value="${recipe.recipeName}" />
					</h5>
					<p class="card-text">
						<c:out value="${recipe.recipeDescription}" />
					</p>
				</div>
			</div>
		

	</div>

	<p>
		<a href="/easy-recipe-application/index.jsp">Go Back to The Home
			Page</a>
	</p>
</body>
</html>