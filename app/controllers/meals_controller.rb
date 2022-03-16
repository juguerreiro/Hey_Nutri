class MealsController < ApplicationController
  def show
    meals_all = current_user.meals
    @meals_week = meals_all.each_slice(3).to_a
  end
end


# para criar 3 meals:
# 3.times do
  # pegar uma opcao carb random, usando o id
  # pegar uma opcao protein random, usando o id
  # pegar uma opcao fibra random, usando o

# if current_user.comorbidity = "Aneemia"
  # pegar alimentos com maior ferro
    # proteins.last.iron > 100
