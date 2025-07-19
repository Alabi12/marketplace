class CreateSkillServices < ActiveRecord::Migration[8.0]
  def change
    create_table :skill_services do |t|
      t.string :name
      t.text :description
      t.references :skilled_professional_profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
