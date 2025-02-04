class CreateHighSchoolSchedSubjects < ActiveRecord::Migration[7.2]
  def change
    create_table :high_school_sched_subjects do |t|
      t.references :high_school_sched
      t.references :subject
      t.timestamps
    end
  end
end

