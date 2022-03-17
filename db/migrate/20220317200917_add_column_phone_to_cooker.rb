class AddColumnPhoneToCooker < ActiveRecord::Migration[6.1]
  def change
    add_column :cookers, :phone, :string
  end
end
