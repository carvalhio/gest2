class SchoolClass < ApplicationRecord
  GRADES = [
    "Infantil","1º ano", "2º ano", "3º ano", "4º ano", "5º ano",
    "6º ano", "7º ano", "8º ano", "9º ano",
    "1ª série", "2ª série", "3ª série"
  ]

  IDENTIFIERS = ("A".."Z").to_a + ["II", "III", "IV", "V"]

  SHIFTS = ["Manhã", "Tarde", "Noite"]
  validates :grade, inclusion: { in: GRADES, message: "%{value} não é uma opção válida" }
  validates :identifier, presence: true, length: { maximum: 3 }
  validates :grade, uniqueness: { scope: :identifier, message: "e Identificação já foram registrados para outra turma." }
  validates :adpt, numericality: { greater_than_or_equal_to: 0 }
  
  validates :shift, presence: true, inclusion: { in: SHIFTS, message: "%{value} não é um turno válido" }

end

