class CreateAllergies < ActiveRecord::Migration
  def change
    create_table :allergies do |t|
      t.integer :user_id
      t.integer :ingrediant_id

      t.timestamps null: false
    end
  end
end
