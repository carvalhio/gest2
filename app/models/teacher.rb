class Teacher < ApplicationRecord
	  has_and_belongs_to_many :subjects
	  validates :email, presence: true, uniqueness: { case_sensitive: false }
end

