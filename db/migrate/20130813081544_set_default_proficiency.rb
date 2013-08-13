class SetDefaultProficiency < ActiveRecord::Migration
  def change
    change_column_default(:proficiencies, :proficiency, 0)
  end
end
