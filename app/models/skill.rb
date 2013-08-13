class Skill < ActiveRecord::Base
  # Remember to create a migration!
  has_many :proficiencies
  has_many :users, through: :proficiencies
  validates_uniqueness_of :name

  def user_with_proficiency(num)
    # we want to return a user object who has a proficiency of num for skill of self.
    proficiency_results = self.proficiencies.where(proficiency: num) 
    proficiency_object = proficiency_results.first
    proficiency_object.user
  end

end
