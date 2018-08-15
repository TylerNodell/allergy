class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :user_id

      t.timestamps null: false
      t.index ["user_id"], name: "index_recipe_on_user_id"
    end
  end
end
