class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :meals
  has_one_attached :photo

  def bmi     
   return bmi = (weight/ (height* height))*10000
  end

  def bmr 
    if gender == "male"
    return  88.362 + (13.397 * weight) + (4.799 * height) - (5.677 * age)
    else 
      return   447.593 + (9.247 * weight) + (3.098 * height) - (4.330 * age)
    end
  end
end
