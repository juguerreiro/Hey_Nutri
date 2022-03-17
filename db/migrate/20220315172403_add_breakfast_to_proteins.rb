class AddBreakfastToProteins < ActiveRecord::Migration[6.1]
  def change
    add_column :proteins, :breakfast, :boolean
  end
end
