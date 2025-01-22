class SetDefaultShiftForSchoolClasses < ActiveRecord::Migration[7.0]
  def change
    SchoolClass.where(shift: nil).update_all(shift: "Manhã")
    validates :shift, inclusion: { in: SHIFTS, message: "%{value} não é um turno válido" }, allow_nil: true

  end
end
