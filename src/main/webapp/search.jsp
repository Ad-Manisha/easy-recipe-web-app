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
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
}

.main-body {
	display: flex;
	flex-wrap: wrap;
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 20px;
	background-color: tomato;
	color: #fff;
}

.logo {
	display: flex;
	align-items: center;
}

.logo img {
	width: 40px;
	height: 40px;
	margin-right: 10px;
}

nav {
	display: flex;
	align-items: center;
}

nav a {
	text-decoration: none;
	color: #fff;
	margin: 0 15px;
	font-weight: bold;
	transition: color 0.3s ease-in-out;
}

nav a:hover, .my-btn:hover {
	color: #20353b;
}

.card {
	border: 1px solid #ddd;
	border-radius: 8px;
	margin: 20px;
	overflow: hidden;
	transition: box-shadow 0.3s;
	width: 313px;
	height: 400px;
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

p {
	text-align: right;
}

#my-head {
	margin-left: 600px;
	color: #2e4578;
}
</style>

<title>Search Result</title>
</head>
<body>

	<header>
		<div class="logo">
			<img alt="Easy-Recipe Logo"
				src="data:image/jpeg;base64,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">
			<h1>Easy Recipe</h1>
		</div>
		<nav>
			<a href="./index.jsp">Home</a> <a href="RecipeList">Recipes</a>
		</nav>
	</header>

	<h1 id="my-head">Search Results</h1>
	<div class="main-body">

		<c:forEach items="${recipes}" var="recipe">
			<div class="card">
				<a href="recipes?id=<c:out value='${recipe.recipeId}'/>"> <img
					src="<c:out value="${recipe.imageUrl}"/>" />
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
		</c:forEach>

	</div>

</body>
</html>