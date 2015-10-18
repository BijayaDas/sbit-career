class Employment < ActiveRecord::Base
	
	belongs_to :applicant
	enum current: [:present, :previous, :past]

end
