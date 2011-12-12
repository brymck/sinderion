class Potion
  attr_reader :effects

  def initialize(*ingredients)
    if ingredients.nil?
      @effects = []
    else
      # Keep all effects that have a count greater than 1
      all_effects = ingredients.map(&:effects).flatten
      @effects = all_effects.uniq.keep_if { |i| all_effects.count(i) > 1 }
    end
  end

  def value
    @effects.map(&:value).inject(:+)
  end
end
