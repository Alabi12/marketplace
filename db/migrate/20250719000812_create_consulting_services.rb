class CreateConsultingServices < ActiveRecord::Migration[8.0]
  def change
    create_table :consulting_services do |t|
      t.string :name
      t.text :description
      t.references :business_consulting_profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
