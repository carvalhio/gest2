class CreateSubjectsTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects_teachers, id: false do |t|
      t.references :teacher, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true
    end
  end
end

