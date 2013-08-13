class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :proficiencies
  has_many :skills, through: :proficiencies

  def proficiency_for(skill) # this is a skill object, not just it's name
    return "Does not have this skill" unless self.skills.include?(skill)
    proficiency_results = Proficiency.where(user_id: self.id, skill_id: skill.id)
    proficiency_object = proficiency_results.first
    proficiency_object.proficiency
  end

  def set_proficiency_for(skill, value)
    current_proficiency = Proficiency.where(skill_id: skill.id, user_id: self.id).first
    current_proficiency.proficiency = value
    current_proficiency.save
  end
end
