class AddUniqueIndexToSchoolClasses < ActiveRecord::Migration[7.2]
  def change
      add_index :school_classes, [:grade, :identifier], unique: true
  end
end
