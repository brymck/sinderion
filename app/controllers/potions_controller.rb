class PotionsController < ApplicationController
  protect_from_forgery

  def show
    @ingredients = []
    @ingredients << Ingredient.find_by_slug(params[:id])
    @ingredients << Ingredient.find_by_slug(params[:id_2])
    @ingredients << Ingredient.find_by_slug(params[:id_3]) unless params[:id_3].nil?
  end
end
