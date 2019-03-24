SELECT RecipeTitle, 
(SELECT COUNT(*) 
FROM recipe_ingredients 
WHERE recipe_ingredients.RecipeID = 
		recipes.RecipeID) AS NmbrOfIngrednts 
FROM recipesexample.recipes;
