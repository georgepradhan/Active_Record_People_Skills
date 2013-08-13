class AddProficiencyColumnAndChangeNameOfSkillsUsers < ActiveRecord::Migration
  def change
    add_column(:skills_users, :proficiency, :integer)
    rename_table(:skills_users, :proficiencies)
  end
end
