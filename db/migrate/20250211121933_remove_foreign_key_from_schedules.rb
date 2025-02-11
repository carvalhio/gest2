class RemoveForeignKeyFromSchedules < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :schedules, column: :subject_id
  end
end
