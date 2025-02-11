class DropLevelsTable < ActiveRecord::Migration[7.2]
  def change
    drop_table :levels
  end
end
