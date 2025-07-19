class ProfessionalProfile < ApplicationRecord
  belongs_to :user
  has_many :services, dependent: :destroy
  has_many :appointments, as: :serviceable
end
