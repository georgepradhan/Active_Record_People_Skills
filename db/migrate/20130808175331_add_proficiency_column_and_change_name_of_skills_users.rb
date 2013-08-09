class AddProficiencyColumnAndChangeNameOfSkillsUsers < ActiveRecord::Migration
  def change
    add_column(:skills_users, :created_at, :datetime)
    add_column(:skills_users, :updated_at, :datetime)
    add_column(:skills_users, :proficiencies, :string)
    rename_table(:skills_users, :proficiencies)
  end
end
