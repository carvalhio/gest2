class RemoveSubjectIdFromHighSchools < ActiveRecord::Migration[7.2]
  def change
    remove_column :high_schools, :subject_id, :integer
  end
end
