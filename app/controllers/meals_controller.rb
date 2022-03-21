class MealsController < ApplicationController
  def show
    meals_all = current_user.meals
    @meals_week = meals_all.each_slice(3).to_a
    @protein_breakfast = Protein.find_by_sql("SELECT * FROM proteins WHERE breakfast = true")
    @carbs_breakfast = Carb.find_by_sql("SELECT * FROM carbs WHERE breakfast = true")

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Your Diet!", template: 'meals/meal.html.erb', layout: 'pdf' # Excluding ".pdf" extension.
      end
    end

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
