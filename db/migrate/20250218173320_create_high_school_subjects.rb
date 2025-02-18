class CreateHighSchoolSubjects < ActiveRecord::Migration[7.2]
  def change
    create_table :high_school_subjects do |t|
      t.timestamps
    end
  end
end
