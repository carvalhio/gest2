class Student < ApplicationRecord
  belongs_to :school_class
  validates :name, presence: true
end
