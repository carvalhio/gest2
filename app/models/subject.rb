class Subject < ApplicationRecord
	belongs_to :teacher
    has_many :high_school
    
end
