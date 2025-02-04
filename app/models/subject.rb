class Subject < ApplicationRecord
	def change
	    create_table :subjects do |t|
	      t.string :name, null: false, unique: true
	      has_many :high_school_scheds
	      t.timestamps
        end
    end

    has_many :high_school_sched_subjects
  has_many :high_school_scheds, through: :high_school_sched_subjects
end



