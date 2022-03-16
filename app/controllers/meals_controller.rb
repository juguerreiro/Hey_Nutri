class MealsController < ApplicationController
  def show
    #-------------------------------------------------------------------------------------------------------------------------

    # LUNCH
    if current_user.comorbidity == "None"
      @lunch = []
     
      7.times do |lunch|
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

    elsif current_user.comorbidity == "Anemia"
      @lunch = []
      7.times do |lunch|
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
        @lunch << meal
      end

    elsif current_user.comorbidity == "obesity"
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
    end
 # ----------------------------------------------------------------------------------------------------------------------

 # DINNER
    if current_user.comorbidity == "None"
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

    elsif current_user.comorbidity == "Aneemia"
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

    elsif current_user.comorbidity == "Obesidity"
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
    end
  end
  
end

