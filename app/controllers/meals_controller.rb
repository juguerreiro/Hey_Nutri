class MealsController < ApplicationController
  def show
    #-------------------------------------------------------------------------------------------------------------------------

    # LUNCH
    if current_user.comorbidity.downcase == "none"
      @lunch = []
      7.times do
        protein = Protein.find(Protein.pluck(:id).sample)
        carb = Carb.find(Carb.pluck(:id).sample)
        fibra = Fibra.find(Fibra.pluck(:id).sample)

        meal = Meal.create!(
          protein_id: protein.id,
          carb_id: carb.id,
          fibra_id: fibra.id,
          user_id: current_user.id,
          calories_total: protein.calories + carb.calories + fibra.calories
        )
        @lunch << meal
      end

    elsif current_user.comorbidity.downcase == "aneemia"
      @lunch = []
      7.times do
        protein = Protein.find_by_sql("SELECT * FROM proteins WHERE iron >= 2").sample
        carb = Carb.find_by_sql("SELECT * FROM carbs").sample
        fibra = Fibra.find(Fibra.pluck(:id).sample)
        meal = Meal.create!(
          protein_id: protein.id,
          carb_id: carb.id,
          fibra_id: fibra.id,
          user_id: current_user.id,
          calories_total: protein.calories + carb.calories + fibra.calories
        )
        @lunch << meal
      end

    elsif current_user.comorbidity.downcase == "obesity"
      @lunch = []
      7.times do
        protein = Protein.find_by_sql("SELECT * FROM proteins").sample
        carb = Carb.find_by_sql("SELECT * FROM carbs WHERE sugar <= 20").sample
        fibra = Fibra.find(Fibra.pluck(:id).sample)

        meal = Meal.create!(
          protein_id: protein.id,
          carb_id: carb.id,
          fibra_id: fibra.id,
          user_id: current_user.id,
          calories_total: protein.calories + carb.calories + fibra.calories
        )
        @lunch << meal
      end
    end
 # ----------------------------------------------------------------------------------------------------------------------

 # DINNER
    if current_user.comorbidity.downcase == "none"
      @dinner = []
      7.times do |dinner|
        protein = Protein.find(Protein.pluck(:id).sample)
        carb = Carb.find(Carb.pluck(:id).sample)
        fibra = Fibra.find(Fibra.pluck(:id).sample)

        meal = Meal.create!(
          protein_id: protein.id,
          carb_id: carb.id,
          fibra_id: fibra.id,
          user_id: current_user.id,
          calories_total: protein.calories + carb.calories + fibra.calories
        )
        @dinner << meal
      end

    elsif current_user.comorbidity.downcase == "aneemia"
      @dinner = []
      7.times do |dinner|
        protein = Protein.find_by_sql("SELECT * FROM proteins WHERE iron >= 2").sample
        carb = Carb.find_by_sql("SELECT * FROM carbs").sample
        fibra = Fibra.find(Fibra.pluck(:id).sample)

        meal= Meal.create!(
          protein_id: protein.id,
          carb_id: carb.id,
          fibra_id: fibra.id,
          user_id: current_user.id,
          calories_total: protein.calories + carb.calories + fibra.calories
        )
        @dinner << meal
      end

    elsif current_user.comorbidity.downcase  == "obesity"
      @dinner = []
      7.times do |dinner|
        protein = Protein.find_by_sql("SELECT * FROM proteins").sample
        carb = Carb.find_by_sql("SELECT * FROM carbs WHERE sugar <= 20").sample
        fibra = Fibra.find(Fibra.pluck(:id).sample)

        meal= Meal.create!(
          protein_id: protein.id,
          carb_id: carb.id,
          fibra_id: fibra.id,
          user_id: current_user.id,
          calories_total: protein.calories + carb.calories + fibra.calories
        )
        @dinner << meal
      end
    end
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
