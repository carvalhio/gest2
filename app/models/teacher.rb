class Teacher < ApplicationRecord
	  has_and_belongs_to_many :subjects

	  #validates
	  validates :name, presence:true
	  validates :email, presence: true, uniqueness:true
	  validates :phone, presence: true
	 
end

