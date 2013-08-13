class CreateSkillsUsers < ActiveRecord::Migration
  def change
  	create_table :skills_users do |t|
      t.references :user
      t.references :skill

      t.timestamps
    end
  end
end
