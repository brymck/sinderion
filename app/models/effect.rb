class Effect < ActiveRecord::Base
  has_and_belongs_to_many :ingredients
  has_and_belongs_to_many :potions

  def to_param
    slug
  end
end
