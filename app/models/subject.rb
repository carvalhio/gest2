class Subject < ApplicationRecord
	belongs_to :teacher, optional: true
    has_many :high_school_subjects
    has_many :high_schools, through: :high_school_subjects
    
     has_and_belongs_to_many :teachers
end

