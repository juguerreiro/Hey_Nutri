class Meal < ApplicationRecord
  belongs_to :protein
  belongs_to :carb
  belongs_to :fibra
  belongs_to :user
end
