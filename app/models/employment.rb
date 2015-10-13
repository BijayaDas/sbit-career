class Employment < ActiveRecord::Base
	
	belongs_to :applicant
	enum current: [:present, :last_employer, :past]

end
