class RecipesController < ApplicationController

  def index

    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create( recipe_params )
    if @recipe.valid?
      redirect_to recipes_path
    else
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name,:user_id)
  end

end
