class CreateCarbs < ActiveRecord::Migration[6.1]
  def change
    create_table :carbs do |t|
      t.string :name
      t.integer :calories
      t.integer :sugar

      t.timestamps
    end
  end
end
