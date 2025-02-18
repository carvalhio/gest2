class HighSchool < ApplicationRecord
	belongs_to :subject
	has_many :high_school_subjects
	has_many :subjects, through: :high_school_subjects
end
