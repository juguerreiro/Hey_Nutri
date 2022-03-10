class AddFieldsToUser < ActiveRecord::Migration[6.1]
  def change
   add_column :users, :comorbidity, :string
   add_column :users, :height, :float
   add_column :users, :weight, :float
  end
end
