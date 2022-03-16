class RegistrationsController < Devise::RegistrationsController
  def create
    super
    if current_user.comorbidity.downcase == "none"
      42.times do
        protein = Protein.find(Protein.pluck(:id).sample)
        carb = Carb.find(Carb.pluck(:id).sample)
        fibra = Fibra.find(Fibra.pluck(:id).sample)

        Meal.create!(
          protein_id: protein.id,
          carb_id: carb.id,
          fibra_id: fibra.id,
          user_id: current_user.id,
          calories_total: protein.calories + carb.calories + fibra.calories
        )
      end

    elsif current_user.comorbidity.downcase == "aneemia"
      42.times do
        protein = Protein.find_by_sql("SELECT * FROM proteins WHERE iron >= 2").sample
        carb = Carb.find_by_sql("SELECT * FROM carbs").sample
        fibra = Fibra.find(Fibra.pluck(:id).sample)

        Meal.create!(
          protein_id: protein.id,
          carb_id: carb.id,
          fibra_id: fibra.id,
          user_id: current_user.id,
          calories_total: protein.calories + carb.calories + fibra.calories
        )
      end

    elsif current_user.comorbidity.downcase == "obesidity"
      42.times do
        protein = Protein.find_by_sql("SELECT * FROM proteins").sample
        carb = Carb.find_by_sql("SELECT * FROM carbs WHERE sugar <= 20").sample
        fibra = Fibra.find(Fibra.pluck(:id).sample)

        Meal.create!(
          protein_id: protein.id,
          carb_id: carb.id,
          fibra_id: fibra.id,
          user_id: current_user.id,
          calories_total: protein.calories + carb.calories + fibra.calories
        )
      end
    end
  end
end
