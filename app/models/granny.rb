class Granny < ApplicationRecord
  has_many :appointments
  has_one :activity
  # has_one_attached :photo
end
