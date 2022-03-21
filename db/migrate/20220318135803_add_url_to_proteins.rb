class AddUrlToProteins < ActiveRecord::Migration[6.1]
  def change
    add_column :proteins, :url, :string
  end
end
