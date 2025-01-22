class AddOrderToSchoolClasses < ActiveRecord::Migration[7.2]
  def change
    add_column :school_classes, :order, :string
    add_column :school_classes, :interger, :string
  end
end
