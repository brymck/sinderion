class IngredientsController < ApplicationController
  before_filter :add_breadcrumbs

  def index
    @ingredients = Ingredient.all
    @title = "Ingredients"
  end

  def show
    @ingredient = Ingredient.find_by_slug(params[:id])
    ids = Potion.includes(:ingredients).where("ingredients.slug = ?", params[:id]).map(&:id)
    @potions = Potion.where(:id => ids).paginate(:page => params[:page])
    @title = @ingredient.name
    @breadcrumbs << [@ingredient.name, @ingredient]
  end

  private

  def add_breadcrumbs
    @breadcrumbs << ["Ingredients", ingredients_path]
  end
end
