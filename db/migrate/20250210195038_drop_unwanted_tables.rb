class DropUnwantedTables < ActiveRecord::Migration[7.0]
  def up
    drop_table :high_school_class_scheds, if_exists: true
    drop_table :high_school_classes, if_exists: true
    drop_table :high_school_sched_subjects, if_exists: true
    drop_table :high_school_sched_subjects_new, if_exists: true
    drop_table :highschool_sched_subjects, if_exists: true
    drop_table :highschool_scheds, if_exists: true
    drop_table :schedule_exams, if_exists: true
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
