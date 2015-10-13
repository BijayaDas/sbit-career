class Applicant < ActiveRecord::Base

	has_many :educations
	has_many :employments
	has_many :references
	has_many :addresses

	accepts_nested_attributes_for :addresses, :references, :employments, :educations
	# accepts_nested_attributes_for :references
	# accepts_nested_attributes_for :employements
	# accepts_nested_attributes_for :educations

	acts_as_paranoid
	extend FriendlyId
  friendly_id :slug_name, use: [:slugged, :history]


  mount_uploader :avatar, AvatarUploader

  enum gender: [:Male, :Female]
  enum employer: [:present, :last_employer, :past]


  def slug_name
  	"#{self.first_name} #{self.last_name}".strip
  end

	def full_name
		"#{self.first_name} #{self.middle_name} #{self.last_name}"
	end
	
end
