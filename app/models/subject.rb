class Subject < ApplicationRecord
	belongs_to :teacher
    has_many :high_school_subjects
    has_many :high_schools, through: :high_school_subjects
    
end
