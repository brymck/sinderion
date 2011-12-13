class PotionsController < ApplicationController
  before_filter :add_breadcrumbs

  def index
    @potions = Potion.paginate(:page => params[:page])
    @title = "Potions"
  end

  def show
    a = Potion.includes(:ingredients)
    b = a.where("ingredients.slug = ?", params[:id])
    c = a.where("ingredients.slug = ?", params[:id_2])
    if params[:id_3].nil?
      ids = (b & c).map(&:id)

      # Seems kind of ugly. I might want to revisit this
      potions = Potion.find_all_by_id(ids)
      @potion = potions.keep_if { |p| p.ingredients.count == 2 }.first
    else
      d = a.where("ingredients.slug = ?", params[:id_3])
      ids = (b & c & d).map(&:id)
      @potion = Potion.find_by_id(ids)
    end
    @title = @potion.ingredients.map(&:name).join(" + ")
    @breadcrumbs << [@title, @potion]
  end

  private

  def add_breadcrumbs
    @breadcrumbs << ["Potions", potions_path]
  end
end
