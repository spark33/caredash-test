class Review < ApplicationRecord

	belongs_to :doctor, foreign_key: 'doctor_id'

end
