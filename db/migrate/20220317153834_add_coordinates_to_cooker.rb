class AddCoordinatesToCooker < ActiveRecord::Migration[6.1]
  def change
    add_column :cookers, :latitude, :float
    add_column :cookers, :longitude, :float
  end
end
