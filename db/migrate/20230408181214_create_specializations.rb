class CreateSpecializations < ActiveRecord::Migration[7.0]
  def change
    create_table :specializations do |t|
      t.string :name, null: false
      t.references :doctor, null: false, foreign_key: true

    end
  end
end
