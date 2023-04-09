class CreatePatientCards < ActiveRecord::Migration[7.0]
  def change
    create_table :patient_cards do |t|
      t.string :diagnosis, null: false
      t.references :patient, null: false, foreign_key: true

    end
  end
end
