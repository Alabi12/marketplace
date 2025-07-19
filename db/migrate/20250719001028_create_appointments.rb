class CreateAppointments < ActiveRecord::Migration[8.0]
  def change
    create_table :appointments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :serviceable, polymorphic: true, null: false
      t.datetime :start_time
      t.datetime :end_time
      t.string :status
      t.text :notes

      t.timestamps
    end
  end
end
