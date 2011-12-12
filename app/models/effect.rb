class Effect < ActiveRecord::Base
  has_and_belongs_to_many :ingredients

  def to_param
    slug
  end
end
