class Potion < ActiveRecord::Base
  attr_reader :effects
  default_scope :order => "potions.value DESC"
  has_and_belongs_to_many :effects
  has_and_belongs_to_many :ingredients

  def to_param
    potion.ingredients.map(&:name).join("/")
  end
end
