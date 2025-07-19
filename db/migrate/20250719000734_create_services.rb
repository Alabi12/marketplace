class CreateServices < ActiveRecord::Migration[8.0]
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.integer :duration
      t.decimal :price
      t.references :professional_profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
