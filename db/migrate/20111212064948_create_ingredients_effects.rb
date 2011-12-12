class CreateIngredientsEffects < ActiveRecord::Migration
  def change
    # Ingredients
    create_table :ingredients do |t|
      t.string :name, :null => false
      t.integer :cost, :null => false
      t.float :weight, :null => false
      t.boolean :rare, :null => false, :default => false
    end

    # Effects
    create_table :effects do |t|
      t.string :name, :null => false
      t.string :description, :null => false
      t.integer :magnitude, :null => false
      t.integer :value, :null => false
    end

    # HABTM table
    create_table :effects_ingredients, :id => false do |t|
      t.references :effect, :null => false
      t.references :ingredient, :null => false
    end
    add_index :effects_ingredients, [:effect_id, :ingredient_id], :unique => true
  end
end
