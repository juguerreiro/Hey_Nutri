class CreateMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.references :protein, null: false, foreign_key: true
      t.references :carb, null: false, foreign_key: true
      t.references :fibra, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :calories_total

      t.timestamps
    end
  end
end
