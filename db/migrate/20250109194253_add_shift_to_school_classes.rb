class AddShiftToSchoolClasses < ActiveRecord::Migration[7.2]
  def change
    add_column :school_classes, :shift, :string
  end
end
