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
<title>New Recipe</title>
<style>
body {
	font-family: Arial, sans-serif;
	background: white;
	margin: 0;
	padding: 0;
}

section {
	width: 100%;
	height:15vh;
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
	width: 90px;
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

#back {
	margin-right: 990px;
	color: black;
	font-weight: bold;
	transition: color 0.3s ease-in-out;
}

#back:hover {
	color: #5b79bd;
}

.my-div {
	height: 550px;
	width: 350px;
}

.my-div label {
	font-size: 14px bold;
	padding: 10px;
	color: black;
	margin-bottom: 6px;
	dispplay: inline-block;
	text-align: left;
}

label, input {
	display: block;
	margin-left: 9px;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	border-bottom-left-radius: 5px;
	border-bottom-right-radius: 5px;
}

.search-input {
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px 0 0 4px;
	font-size: 16px;
	width: 500px;
}

.submit-button {
	width: 30%;
	background-color: #fac031;
	color: #fff;
	padding: 10px 15px;
	border: 1px ;
	border-radius: 0 4px 4px 0;
	cursor: pointer;
	font-size: 14px;
	margin-left: 350px;
	margin-bottom: 70px;
}

.submit-button:hover {
	background-color: green;
}


#my-head {
	display:flex;
	align-items: center;
	justify-content:center;
	font-size: 50px;
}

#my-head span{
	color: #fac031;
	margin-left: 15px;
	font-family: mv boli;
}

#my-head span::after{
	content: '';
	width: 100%;
	height:2px;
	background: #fac031;
	display:block;
	position:relative;

}

#desc, #ingredients {
	margin-left: 10px;
}

#name, #image, #comment, #time, #ingredient, #link, #instruction {
	color: #2e4578;
	font-weight: bold;
	transition: color 0.3s ease-in-out;
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
				<li><a href="gallery">Gallery</a></li>
			</ul>

			<div class="icon">
				<i class="fa-solid fa-heart"></i>
			</div>

		</nav>

	</section>

	<center>
		<% String message = (String)request.getAttribute("message"); %>

		<%-- Check if the message is not null --%>
		<% if (message != null && !message.isEmpty()) { %>
		<script>
            // Display the message in an alert box
            alert("<%= message %>");
        </script>
		<% } %>
		
		<a href="adminRec-list" id="back"><i class="fa-solid fa-circle-left fa-lg" aria-hidden="true"></i></a>
		<h1 id="my-head">Create<span> New Recipe</span></h1>
			

		<div class="my-div">
			<br>
			<form action="addRecipe" method="post">
				<div>
					<label><i class="fa-solid fa-utensils fa-lg" id="name"></i></label>
					<input type="text" name="recipeName" class="search-input"
						placeholder="Recipe Name" required>
				</div>
				<br>
				<div>
					<label><i class="fa-solid fa-image fa-lg" id="image"></i></label> <input
						type="text" name="imageUrl" class="search-input"
						placeholder="Image URl" required>
				</div>
				<br>
				<div>
					<label><i class="fa-solid fa-bowl-food fa-lg"
						id="ingredient"></i></label>
					<textarea rows="3" cols="6" name="ingredientsName"
						class="search-input" id="ingredients" placeholder="Ingredients" required></textarea>
				</div>
				<br>
				<div>
					<label><i class="fa-solid fa-comment fa-lg" id="comment"></i></label>
					<textarea rows="3" cols="6" name="recipeDescription"
						class="search-input" id="desc" placeholder="Description" required></textarea>
				</div>
				<br>

				<div>
					<label><i class="fa-solid fa-clock fa-lg" id="time"></i></label> <input
						type="text" name="recipeTime" class="search-input"
						placeholder="Time" required>
				</div>
				<br>
				<div>
					<label><i class="fa-solid fa-comment fa-lg"
						id="instruction"></i></label>
					<textarea rows="6" cols="12" name="instructions"
						class="search-input" id="instructions" placeholder="Instructions" required></textarea>
				</div>
				<br>
				<div>
					<label><i class="fa-solid fa-link fa-lg" id="link"></i></i></label>
					<textarea rows="3" cols="6" name="youtubeLink" class="search-input"
						id="links" placeholder="Youtube Link" required></textarea>
				</div>
				<br>

				<div>
					<label>Category:</label> <select name="recipeCategory">
						<option value="Veg">Veg</option>
						<option value="Non-Veg">Non-Veg</option>
					</select>
				</div>
				<br> <br>
				<button type="submit" class="submit-button">Add Recipe</button>
			</form>

		</div>
	</center>

</body>
</html>