class CreateIngrediants < ActiveRecord::Migration
  def change
    create_table :ingrediants do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
