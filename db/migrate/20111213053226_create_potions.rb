class CreatePotions < ActiveRecord::Migration
  def change
    create_table :potions do |t|
      t.integer :value
    end

    # HABTM tables
    create_table :effects_potions, :id => false do |t|
      t.references :effect, :null => false
      t.references :potion, :null => false
    end
    add_index :effects_potions, [:effect_id, :potion_id], :unique => true

    create_table :ingredients_potions, :id => false do |t|
      t.references :ingredient, :null => false
      t.references :potion, :null => false
    end
    add_index :ingredients_potions, [:ingredient_id, :potion_id], :unique => true
  end
end
