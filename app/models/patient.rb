class Patient < ApplicationRecord
  has_many :patient_cards, dependent: :destroy
  validates :name, presence: true
end
