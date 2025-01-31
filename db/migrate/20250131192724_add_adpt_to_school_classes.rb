class AddAdptToSchoolClasses < ActiveRecord::Migration[7.2]
  def change
    add_column :school_classes, :adpt, :integer
  end
end
