class CreateSchedules < ActiveRecord::Migration[7.2]
  def change
    create_table :schedules do |t|
      t.string :stage
      t.string :grade_application
      t.date :date
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
