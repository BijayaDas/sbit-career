class Applicant < ActiveRecord::Base

	has_many :educations, :dependent => :destroy
	has_many :employments, :dependent => :destroy
	has_many :references, :dependent => :destroy
	has_many :addresses, :dependent => :destroy

	accepts_nested_attributes_for :addresses, :references, :employments, :educations, :reject_if => :all_blank, :allow_destroy => true


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
