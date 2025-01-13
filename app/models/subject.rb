class Subject < ApplicationRecord
	def change
	    create_table :subjects do |t|
	      t.string :name, null: false, unique: true

	      t.timestamps
        end
    end
end



