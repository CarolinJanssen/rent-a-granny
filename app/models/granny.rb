class Granny < ApplicationRecord
  has_many :appointments
  belongs_to :activity
  # belongs_to :user
  has_one_attached :photo

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :district, presence: true
  validates :description, presence: true
  validates :important_notes, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
  validates :age, presence: true, numericality: { only_integer: true }
end
