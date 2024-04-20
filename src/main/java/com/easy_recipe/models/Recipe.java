package com.easy_recipe.models;

public class Recipe {

	private int recipeId;

	private String recipeName;

	private String imageUrl;

	private String recipeDescription;

	private String recipeTime;

	private String recipeCategory;
	
	private String ingredientsName;
	
	private String instructions;
	
	private String youtubeLink;

	public Recipe() {

	}

	public Recipe(int recipeId, String recipeName, String imageUrl, String recipeDescription, String recipeTime,
			String recipeCategory, String ingredientsName, String instructions,  String youtubeLink ) {

		this.recipeId = recipeId;
		this.recipeName = recipeName;
		this.imageUrl = imageUrl;
		this.recipeDescription = recipeDescription;
		this.recipeTime = recipeTime;
		this.recipeCategory = recipeCategory;
		this.ingredientsName = ingredientsName;
		this.instructions = instructions;
		this.youtubeLink = youtubeLink;
		
	}

	public Recipe(String recipeName, String imageUrl, String recipeDescription, String recipeTime,
			String recipeCategory, String ingredientsName, String instructions,  String youtubeLink) {

		this.recipeName = recipeName;
		this.imageUrl = imageUrl;
		this.recipeDescription = recipeDescription;
		this.recipeTime = recipeTime;
		this.recipeCategory = recipeCategory;
		this.ingredientsName = ingredientsName;
		this.instructions = instructions;
		this.youtubeLink = youtubeLink;
		
	}

	public int getRecipeId() {
		return recipeId;
	}

	public void setRecipeId(int recipeId) {
		this.recipeId = recipeId;
	}

	public String getRecipeName() {
		return recipeName;
	}

	public void setRecipeName(String recipeName) {
		this.recipeName = recipeName;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getRecipeDescription() {
		return recipeDescription;
	}

	public void setRecipeDescription(String recipeDescription) {
		this.recipeDescription = recipeDescription;
	}

	public String getRecipeTime() {
		return recipeTime;
	}

	public void setRecipeTime(String recipeTime) {
		this.recipeTime = recipeTime;
	}

	public String getRecipeCategory() {
		return recipeCategory;
	}

	public void setRecipeCategory(String recipeCategory) {
		this.recipeCategory = recipeCategory;
	}
	
	public String getIngredientsName() {
		return ingredientsName;
	}

	public void setIngredientsName(String ingredientsName) {
		this.ingredientsName = ingredientsName;
	}
	
	public String getInstructions() {
		return instructions;
	}

	public void setInstructions(String instructions) {
		this.instructions = instructions;
	}
	
	public String getYoutubeLink() {
		return youtubeLink;
	}

	public void setYoutubeLink(String youtubeLink) {
		this.youtubeLink = youtubeLink;
	}


	@Override 
	public String toString() {
		return "Recipe [recipeId=" + recipeId + ", recipeName=" + recipeName + ", imageUrl=" + imageUrl
				+ ", recipeDescription=" + recipeDescription + ", recipeTime=" + recipeTime + ", recipeCategory="
				+ recipeCategory + ", ingredientsName=" + ingredientsName + ", instructions=" + instructions + ", youtubeLink=" + youtubeLink +"]";
	}

}
