class CreateSkilledProfessionalProfiles < ActiveRecord::Migration[8.0]
  def change
    create_table :skilled_professional_profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :skill_type
      t.text :experience
      t.string :portfolio_url

      t.timestamps
    end
  end
end
