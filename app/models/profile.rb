class Profile < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :appointments
  belongs_to :user
  has_one_attached :photo

  validates :last_name, presence: true
  validates :activity_id, presence: true
  validates :first_name, presence: true
  validates :number_of_kids, presence: true, numericality: { only_integer: true }
  validates :district, presence: true
  validates :description, presence: true
  validates :important_notes, presence: true
end
