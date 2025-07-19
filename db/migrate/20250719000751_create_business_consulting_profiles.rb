class CreateBusinessConsultingProfiles < ActiveRecord::Migration[8.0]
  def change
    create_table :business_consulting_profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.text :expertise
      t.text :qualifications

      t.timestamps
    end
  end
end
