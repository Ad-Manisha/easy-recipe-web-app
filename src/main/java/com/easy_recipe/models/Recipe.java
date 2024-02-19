package com.easy_recipe.models;

public class Recipe {

	private int recipeId;

	private String recipeName;

	private String imageUrl;

	private String recipeDescription;

	private String recipeTime;

	private String recipeCategory;

	public Recipe() {

	}

	public Recipe(int recipeId, String recipeName, String imageUrl, String recipeDescription, String recipeTime,
			String recipeCategory) {

		this.recipeId = recipeId;
		this.recipeName = recipeName;
		this.imageUrl = imageUrl;
		this.recipeDescription = recipeDescription;
		this.recipeTime = recipeTime;
		this.recipeCategory = recipeCategory;
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

	@Override
	public String toString() {
		return "Recipe [recipeId=" + recipeId + ", recipeName=" + recipeName + ", imageUrl=" + imageUrl
				+ ", recipeDescription=" + recipeDescription + ", recipeTime=" + recipeTime + ", recipeCategory="
				+ recipeCategory + "]";
	}

}
