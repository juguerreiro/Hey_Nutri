class MealCreator
  def initialize(user)
    @user = user
  end

  def create_meals
    if @user.comorbidity.downcase == "none"
      36.times do
        protein = Protein.find_by_sql("SELECT * FROM proteins WHERE breakfast <> true").sample
        carb = Carb.find_by_sql("SELECT * FROM carbs WHERE breakfast <> true").sample
        fibra = Fibra.find(Fibra.pluck(:id).sample)

        Meal.create!(
          protein_id: protein.id,
          carb_id: carb.id,
          fibra_id: fibra.id,
          user_id: @user.id,
          calories_total: protein.calories + carb.calories + fibra.calories
        )
      end

      18.times do
        protein = Protein.where(breakfast: true).sample
        carb = Carb.where(breakfast: true).sample
        fibra = Fibra.all.sample

        Meal.create!(
          protein_id: protein.id,
          carb_id: carb.id,
          fibra_id: fibra.id,
          user_id: @user.id,
          calories_total: protein.calories + carb.calories
        )
      end


    elsif @user.comorbidity.downcase == "aneemia"
      36.times do
        protein = Protein.find_by_sql("SELECT * FROM proteins WHERE iron >= 2 AND breakfast <> true").sample
        carb = Carb.find_by_sql("SELECT * FROM carbs WHERE breakfast <> true").sample
        fibra = Fibra.find(Fibra.pluck(:id).sample)

        Meal.create!(
          protein_id: protein.id,
          carb_id: carb.id,
          fibra_id: fibra.id,
          user_id: @user.id,
          calories_total: protein.calories + carb.calories + fibra.calories
        )
      end

      18.times do
        protein = Protein.where(breakfast: true).sample
        carb = Carb.where(breakfast: true).sample
        fibra = Fibra.all.sample

        Meal.create!(
          protein_id: protein.id,
          carb_id: carb.id,
          fibra_id: fibra.id,
          user_id: @user.id,
          calories_total: protein.calories + carb.calories
        )
      end

    elsif @user.comorbidity.downcase == "obesity"
      36.times do
        protein = Protein.find_by_sql("SELECT * FROM proteins WHERE breakfast <> true").sample
        carb = Carb.find_by_sql("SELECT * FROM carbs WHERE sugar <= 20 AND breakfast <> true").sample
        fibra = Fibra.find(Fibra.pluck(:id).sample)

        Meal.create!(
          protein_id: protein.id,
          carb_id: carb.id,
          fibra_id: fibra.id,
          user_id: @user.id,
          calories_total: protein.calories + carb.calories + fibra.calories
        )
      end

      18.times do
        protein = Protein.where(breakfast: true).sample
        carb = Carb.where(breakfast: true).sample
        fibra = Fibra.all.sample

        Meal.create!(
          protein_id: protein.id,
          carb_id: carb.id,
          fibra_id: fibra.id,
          user_id: @user.id,
          calories_total: protein.calories + carb.calories
        )
      end
    end
  end
end
