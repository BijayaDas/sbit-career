class Address < ActiveRecord::Base

	belongs_to :applicant

	enum address_type: [:present, :permanent]
	
end
