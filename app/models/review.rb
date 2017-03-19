class Review < ApplicationRecord

	belongs_to :doctor, foreign_key: 'doctor_id'

	scope :for_doctor, ->(id) { where(doctor_id: id) }

end
