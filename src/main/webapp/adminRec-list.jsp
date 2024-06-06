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
<title>Admin-Recipe-list</title>
</head>
<style>
body {
	margin: 0;
	padding: 0;
}

.main-body {
	display: flex;
	flex-wrap: wrap;
	font-family: Arial, sans-serif;
	background-color: white;
	
}


section{
    width: 100%;
    height: 14vh;

}

section nav{
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

section nav .logo img{
    width: 110px;
    cursor: pointer;
    margin: 7px 0;
}

section nav ul{
    list-style: none;
}

section nav ul li{
    display: inline-block;
    margin: 0 15px;
}

section nav ul li a{
    text-decoration: none;
    color: #000;
    font-weight: 500;
    font-size: 17px;
    transition: 0.1s;
}
section nav ul li a::after{
    content: '';
    width: 0;
    height: 2px;
    background: #fac031;
    display: block;
    transition: 0.2s linear;

}

section nav ul li a:hover::after{
    width: 100%;

}
section nav ul li a:hover{
    color: #fac031;

}

section nav .icon i{
    font-size: 18px;
    color: #000;
    margin: 0 5px;
    cursor: pointer;
    transition: 0.3s;
}

section nav .icon i:hover{
    color: #fac031;
}

#name {
	color: black;
	font-weight: bold;
	transition: color 0.3s ease-in-out;
	margin-left: 59px;
	text-decoration:none;
}

nav a:hover, .my-btn:hover {
	color: #20353b;
}

.search-container {
	display: flex;
	align-items: center;
	justify-content: center;
	background-color: white;
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
	border: 1px ;
	border-radius: 0 4px 4px 0;
	cursor: pointer;
	font-size: 16px;
}

.search-button:hover {
	background-color: green;
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

#edit, #delete {
	text-decoration: none;
	color: #2e4578;
	margin: 58px;
	font-weight: bold;
	transition: color 0.3s ease-in-out;
}

#edit:hover{
	color: green;
}
#delete:hover{
	color:red;
}


</style>
<title>Admin-Recipe List</title>
</head>
<body>


	<section>
		<nav>
			<div class=" logo">
				<img src=".\Image\logo.png">

			</div>

			<ul>
				<li><a href="./index.jsp">Home</a></li>
				<li><a href="./addRecipe.jsp">Add Recipe</a></li>
				<li><a href="#Gallery">Gallery</a></li>
				<li><a href="adminLogout">Logout</a></li>
				<a href="#" id="name"><i
				class="fa-solid fa-user-tie fa-lg" id="name"></i> <%=session.getAttribute("name")%>
			</a>
			</ul>

			<div class="icon">
				 <i class="fa-solid fa-heart"></i>
			</div>

		</nav>
		
	</section>

	<div class="search-container">
		<form action="search" method="post">
			<input type="text" class="search-input"
				placeholder="Search..ingredients.." name="ingredient"> <input
				type="submit" class="search-button" />
		</form>
	</div>

	<div class="main-body">
		<c:forEach items="${recipeList}" var="recipe">
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
				<a href="edit?id=<c:out value='${recipe.recipeId}'/>" id="edit"><i
					class="fas fa-edit fa-lg" aria-hidden="true"></i></a> <a
					href="delete?id=<c:out value='${recipe.recipeId}'/>" id="delete"><i
					class="fa fa-trash fa-lg" aria-hidden="true"></i></a>
			</div>
		</c:forEach>

	</div>

</body>
</html>