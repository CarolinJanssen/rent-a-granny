class Granny < ApplicationRecord
  has_many :appointments
  belongs_to :activity
  # has_one_attached :photo
end
