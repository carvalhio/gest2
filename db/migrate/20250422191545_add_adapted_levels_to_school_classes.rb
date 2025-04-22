class AddAdaptedLevelsToSchoolClasses < ActiveRecord::Migration[7.2]
  def change
    add_column :school_classes, :adpt_level1, :integer
    add_column :school_classes, :adpt_level2, :integer
  end
end
