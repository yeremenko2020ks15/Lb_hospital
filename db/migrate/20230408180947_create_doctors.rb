class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :name, null: false
      t.references :department, null: false, foreign_key: true
    end
  end
end
