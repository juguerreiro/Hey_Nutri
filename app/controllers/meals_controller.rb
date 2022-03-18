class MealsController < ApplicationController
  def show
    meals_all = current_user.meals # 54
    # @meals_week = meals_all.each_slice(3).to_a
    # pegar todas as meals que forem breakfast

    lunch_dinner = []
    breakfast = []

    meals_all.select do |meal|
      if meal.protein.breakfast
        breakfast << meal
      else
        lunch_dinner << meal
      end
    end

    @lunchs_dinners = lunch_dinner.each_slice(3).to_a
    @breakfasts = breakfast.each_slice(3).to_a
    # pegar todas as meals que não forem breakfast

  end

  def update
    # pegar as receitas do usuario
    # destruir todas as receitas do DB
    # chamar o metodo de criar as receitas novamente
    meals = current_user.meals
    meals.destroy_all
    MealCreator.new(current_user).create_meals
    redirect_to meal_path(current_user)
  end
end
