class CreateFibras < ActiveRecord::Migration[6.1]
  def change
    create_table :fibras do |t|
      t.string :name
      t.integer :calories

      t.timestamps
    end
  end
end
