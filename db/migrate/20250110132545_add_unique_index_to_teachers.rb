class AddUniqueIndexToTeachers < ActiveRecord::Migration[7.2]
  def change
    add_index :teachers, [:first_name, :email, :phone], unique: true
  end
end
