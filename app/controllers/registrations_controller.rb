class RegistrationsController < Devise::RegistrationsController
  def create
    super
    MealCreator.new(current_user).create_meals
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
