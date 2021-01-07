package guru.springframework.services;

import guru.springframework.commands.RecipeCommand;
import guru.springframework.domain.Recipe;

import java.util.Set;

public interface RecipeService {

    Set<Recipe> getRecipes();

    Object findById(long anyLong);

    RecipeCommand saveRecipeCommand(RecipeCommand command);
}