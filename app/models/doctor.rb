class Doctor < ApplicationRecord
  belongs_to :department
  has_one :specialization, dependent: :destroy
  validates :name, presence: true
end
