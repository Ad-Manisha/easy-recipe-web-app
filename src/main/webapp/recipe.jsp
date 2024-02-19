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
      font-family: Arial, sans-serif;
      background-color: tomato;
      margin: 0 px;
      padding: 0;
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }

    .recipe{
      border: 1px groove  tomato ;
      margin: auto;
      border-radius: 8px;
      margin: 20px;
      overflow: hidden;
      transition: box-shadow 0.3s;
      width: 350px;
      background-color: #fff;
      
    }
    .recipe img{
    width: 100%;
    height: 200px;
    object-fit: cover;
    }
    .recipe-content{
      	padding: 20px;
    }
    .recipe-title{
      font-size: 1.25rem;
	  margin-bottom: 0.75rem;
	  
    }
     .recipe-time, .recipe-category{
      font-size: 0.75rem bold;
	  margin-bottom: 0.75rem;
      color: black;
    }
    .recipe-description{
      font-size:1rem bold;
	  margin-bottom: 0.75rem;
      color: #666;
    }
    
    .recipe-category{
      font-size: 0.75rem bold;
	  margin-bottom: 0.75rem;
      color: green;
    }
    .recipe-text {
	    color: #666;
    }
    .text{
      font-size: 0.75rem bold;
	  margin-bottom: 0.75rem;
      color: brown;
    }
    a {
      color: #31708f;
      text-decoration: none;
      font-weight: bold;
    }

    a:hover {
      text-decoration: underline;
    }
    #home{
    	color: white;
    	text-align:right ;
    }
    li{
      font-size: 0.75rem ;
	  margin-bottom: 0.75rem;
      color: black;
    }
    ol li{
    	list-style-type: upper-roman;
    }
    ul li{
    	list-style-type: circle;
    }
    
  </style>
  <title>Custom Search Box</title>
</head>
<body>

	<div class="main-body">
			<div class="recipe">
			
			
				<img src="<c:out value="${recipe.imageUrl}"/>" />
				
				<div class="recipe-content">
					<h6 class="recipe-title">
						<c:out value="${recipe.recipeName}" />
					</h6>
					<h6 class="recipe-description">
						<c:out value="${recipe.recipeDescription}" />
					</h6>
					<h6 class="recipe-time">
						Time: <c:out value="${recipe.recipeTime}" />
					</h6>
					<h6 class="recipe-category">
						Category: <c:out value="${recipe.recipeCategory}" />
					</h6>
					<p class="recipe-text">
					       
					  	<h6 class="text">Ingredients:</h6>
					     
					      	<ol>
					      		<li> 2 cup X </li>
					      		<li> 1/2 tablespoon Y </li>
					      		<li> 1/2 cup Z </li>
					      	</ol>
					      	<br>
					       <h6 class="text">Preparation :</h6>
					       
					       <ul>
					      		<li>Step 1</li>
					      		<br>
					      		<li>Step 2</li>
					      		<br>
					      		<li>Step 3</li>
					      	</ul>
					       
					        <a href="https://www.youtube.com/@VillageCookingChannel">video link to youtube</a>
				</div>
			</div>

	</div>

	<p >
		<a href="/easy-recipe-application/index.jsp"id="home">Go Back to The Home
			Page</a>
	</p>
</body>
</html>