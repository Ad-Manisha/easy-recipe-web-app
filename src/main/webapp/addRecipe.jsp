<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Contact</title>
</head>
<body>
	<h2>
		<a href="index.jsp">Home</a>
	</h2>
	<center>
		<%
		Object msg = request.getAttribute("message");
		if (msg != null) {
			out.println(msg.toString());
		}
		%>
		<h1>Create New Recipe</h1>
		<div>
			<form action="addRecipe" method="post">
				<div>
					<label>Recipe Name</label> <input type="text" name="recipeName">
				</div>
				<br>
				<div>
					<label>Image Url</label> <input type="text" name="imageUrl">
				</div>
				<br>

				<div>
					<label>Description</label>
					<textarea rows="10" cols="30" name="recipeDescription"></textarea>
				</div>
				<br>

				<div>
					<label>Time</label> <input type="text" name="recipeTime">
				</div>
				<br>

				<div>
					<label>Category</label> <select name="recipeCategory">
						<option>Veg</option>
						<option>Non-Veg</option>
					</select>
				</div>
				<br> <br>
				<button type="submit">Add Recipe</button>
			</form>

		</div>
	</center>

</body>
</html>