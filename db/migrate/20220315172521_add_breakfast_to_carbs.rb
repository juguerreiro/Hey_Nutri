class AddBreakfastToCarbs < ActiveRecord::Migration[6.1]
  def change
    add_column :carbs, :breakfast, :boolean
  end
end
