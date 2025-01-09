class AddIdentifierToSchoolClasses < ActiveRecord::Migration[7.2]
  def change
    add_column :school_classes, :identifier, :string
  end
end
