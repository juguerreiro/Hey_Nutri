class CreateProteins < ActiveRecord::Migration[6.1]
  def change
    create_table :proteins do |t|
      t.string :name
      t.integer :calories
      t.integer :iron

      t.timestamps
    end
  end
end
