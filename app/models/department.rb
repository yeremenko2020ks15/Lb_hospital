class Department < ApplicationRecord
  has_many :doctors, dependent: :destroy
  validates :name, presence: true
end
