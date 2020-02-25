class Granny < ApplicationRecord
  has_many :appointments
  belongs_to :activity
end
