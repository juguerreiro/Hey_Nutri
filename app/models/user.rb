class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attr_accessor :email, :password, :password_confirmation, :name, :height, :weight, :comorbidity, :age, :gender
  has_many :meals
end
