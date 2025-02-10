class DropSubjects < ActiveRecord::Migration[7.2]
  def up
    drop_table :subjects
  end

  def down
    create_table :subjects do |t|
      t.string :name
      t.timestamps
    end
  end
end

