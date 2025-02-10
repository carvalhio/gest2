class RemoveForeignKeysFromHighSchoolScheds < ActiveRecord::Migration[7.2]
  def change
    remove_foreign_key :high_school_scheds, :subjects if foreign_key_exists?(:high_school_scheds, :subjects)
  end
end
