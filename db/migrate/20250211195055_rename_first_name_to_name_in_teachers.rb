class RenameFirstNameToNameInTeachers < ActiveRecord::Migration[7.0]
  def change
    rename_column :teachers, :first_name, :name
    add_index :teachers, :email, unique: true
  end
end