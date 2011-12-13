# coding: utf-8
module PotionsHelper
  # Overrides potion path to allow inclusion of all ingredients
  def potion_path(potion)
    a, b, c = potion.ingredients
    "/potions/#{a.slug}/#{b.slug}" + (c.nil? ? "" : "/#{c.slug}")
  end
end
