# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111213053226) do

  create_table "effects", :force => true do |t|
    t.string  "name",        :null => false
    t.string  "description", :null => false
    t.integer "magnitude",   :null => false
    t.integer "value",       :null => false
    t.string  "slug",        :null => false
  end

  add_index "effects", ["slug"], :name => "index_effects_on_slug", :unique => true

  create_table "effects_ingredients", :id => false, :force => true do |t|
    t.integer "effect_id",     :null => false
    t.integer "ingredient_id", :null => false
  end

  add_index "effects_ingredients", ["effect_id", "ingredient_id"], :name => "index_effects_ingredients_on_effect_id_and_ingredient_id", :unique => true

  create_table "effects_potions", :id => false, :force => true do |t|
    t.integer "effect_id", :null => false
    t.integer "potion_id", :null => false
  end

  add_index "effects_potions", ["effect_id", "potion_id"], :name => "index_effects_potions_on_effect_id_and_potion_id", :unique => true

  create_table "ingredients", :force => true do |t|
    t.string  "name",                      :null => false
    t.integer "cost",                      :null => false
    t.float   "weight",                    :null => false
    t.boolean "rare",   :default => false, :null => false
    t.string  "slug",                      :null => false
  end

  add_index "ingredients", ["slug"], :name => "index_ingredients_on_slug", :unique => true

  create_table "ingredients_potions", :id => false, :force => true do |t|
    t.integer "ingredient_id", :null => false
    t.integer "potion_id",     :null => false
  end

  add_index "ingredients_potions", ["ingredient_id", "potion_id"], :name => "index_ingredients_potions_on_ingredient_id_and_potion_id", :unique => true

  create_table "potions", :force => true do |t|
    t.integer "value"
  end

end
