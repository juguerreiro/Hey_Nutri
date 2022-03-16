class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :meals

  def bmi     
   return bmi = (self.weight/ (self.height* self.height))*10000
  end

  def bmr 
    if self.gender == "male"
    return  88.362 + (13.397 * self.weight) + (4.799 * self.height) - (5.677 * self.age)
    else 
      return   447.593 + (9.247 * self.weight) + (3.098 * self.height) - (4.330 * self.age)
    end
  end
end
