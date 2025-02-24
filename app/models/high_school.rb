class HighSchool < ApplicationRecord
	has_many :high_school_subjects
	has_many :subjects, through: :high_school_subjects

	accepts_nested_attributes_for :high_school_subjects
end
