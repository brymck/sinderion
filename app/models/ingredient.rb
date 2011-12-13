class Ingredient < ActiveRecord::Base
  has_and_belongs_to_many :effects
  has_and_belongs_to_many :potions

  def compatible?(other_ingredient)
    !matches(other_ingredient).blank?
  end

  def compatible_list(*ingredients)
    unmatched = effects
    matched = []

    ingredients.each do |i|
      new_matches = (unmatched & (i.effects - matched))
      new_unmatches = i.effects - new_matches
      matched += new_matches
      unmatched += new_unmatches
    end

    Ingredient.all.keep_if do |i|
      # Exclude any ingredients that are already mixed, plus any where there are
      # no matches for effects unmatched thus far
      !ingredients.include?(i) && (i != self) && !(i.effects & unmatched).blank?
    end
  end

  def incompatible?(other_ingredient)
    !compatible?(other_ingredient)
  end

  def matches(other_ingredient)
    # Returns set intersection
    effects & other_ingredient.effects
  end

  def nonmatches
    (effects & other_ingredient.effects) - matches(other_ingredient)
  end

  def value
    effects.map(&:value).inject(:+)
  end

  def to_param
    slug
  end
end
