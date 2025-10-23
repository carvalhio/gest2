class ChangeTeacherIdNullInSubjects < ActiveRecord::Migration[7.0]
  def change
    change_column_null :subjects, :teacher_id, true
  end
end
