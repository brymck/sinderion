class IngredientsController < ApplicationController
  protect_from_forgery

  def index
    @ingredients = Ingredient.all
    @title = "Ingredients"
  end

  def show
    @ingredient = Ingredient.find_by_slug(params[:id])
    @title = @ingredient.name
  end
end
