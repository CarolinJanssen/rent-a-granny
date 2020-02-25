class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :appointments
  # validates :last_name, presence: true
  # validates :first_name, presence: true
  # validates :number_of_kids, presence: true, numericality: { only_integer: true }
end
