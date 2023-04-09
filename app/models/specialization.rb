class Specialization < ApplicationRecord
  belongs_to :doctor
  validates :name, presence: true
end
