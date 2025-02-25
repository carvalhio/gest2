class HighSchool < ApplicationRecord
	has_many :high_school_subjects
	has_many :subjects, through: :high_school_subjects

	accepts_nested_attributes_for :high_school_subjects

  STAGES = ["1", "2", "3", "4"]
  PERIODS = ["Parcial", "Global"]

  validates :stage, inclusion: { in: STAGES }
  validates :period, inclusion: { in: PERIODS }

end


