class PatientCard < ApplicationRecord
  belongs_to :patient
  validates :diagnosis, presence: true
end
