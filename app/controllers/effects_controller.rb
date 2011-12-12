class EffectsController < ApplicationController
  protect_from_forgery

  def index
    @effects = Effect.all
    @title = "Effects"
  end

  def show
    @effect = Effect.find_by_slug(params[:id])
    @title = @effect.name
  end
end
