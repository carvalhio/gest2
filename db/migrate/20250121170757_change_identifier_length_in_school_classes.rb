class ChangeIdentifierLengthInSchoolClasses < ActiveRecord::Migration[6.1]
  def change
    change_column :school_classes, :identifier, :string, limit: 10
  end
end


