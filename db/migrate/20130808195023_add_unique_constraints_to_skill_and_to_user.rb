class AddUniqueConstraintsToSkillAndToUser < ActiveRecord::Migration
  def change
  	add_index(:users, :email, :unique => true)
  	add_index(:skills, :name, :unique => true)
  end
end
