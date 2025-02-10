class HighSchoolSched < ApplicationRecord
  belongs_to :subject

   has_many :high_school_sched_subjects, class_name: 'HighSchoolSchedSubject'
  has_many :subjects, through: :high_school_sched_subjects

  def formatted_date
    date.strftime("%d/%m")
  end
end

