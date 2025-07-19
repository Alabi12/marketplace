class CreateProfessionalProfiles < ActiveRecord::Migration[8.0]
  def change
    create_table :professional_profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.text :bio
      t.text :specialties

      t.timestamps
    end
  end
end
