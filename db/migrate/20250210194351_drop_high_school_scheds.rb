class DropHighSchoolScheds < ActiveRecord::Migration[7.2]
  def up
    drop_table :high_school_scheds if ActiveRecord::Base.connection.table_exists?('high_school_scheds')
  end

  def down
    create_table :high_school_scheds do |t|
      t.string :stage
      t.date :date
      t.string :exam_type
      t.timestamps
    end
  end
end
