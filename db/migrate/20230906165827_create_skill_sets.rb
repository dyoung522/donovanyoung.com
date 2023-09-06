class CreateSkillSets < ActiveRecord::Migration[7.0]
  def change
    create_table :skill_sets do |t|
      t.references :position, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
