class CreateRecipeIngrediants < ActiveRecord::Migration
  def change
    create_table :recipe_ingrediants do |t|
      t.integer :recipe_id
      t.integer :ingrediant_id

      t.timestamps null: false
    end
  end
end
