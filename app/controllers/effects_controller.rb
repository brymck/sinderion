class EffectsController < ApplicationController
  before_filter :add_breadcrumbs

  def index
    @effects = Effect.all
    @title = "Effects"
  end

  def show
    @effect = Effect.find_by_slug(params[:id])
    @title = @effect.name
    ids = Potion.includes(:effects).where("effects.slug = ?", params[:id]).map(&:id)
    @potions = Potion.where(:id => ids).paginate(:page => params[:page])
    @breadcrumbs << [@effect.name, @effect]
  end

  private

  def add_breadcrumbs
    @breadcrumbs << ["Effects", effects_path]
  end
end
