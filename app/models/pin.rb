class Pin < ActiveRecord::Base
	belongs_to :user
	belongs_to :folder
	belongs_to :store
	
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }#, :default_url => "/images/:style/missing.png"
	validates :image, presence: true
	validates :description, presence: true

	#Set the scope on the model instead of the controller. This seems to get rid of duplicate Pins with infinite scroll
	self.per_page = 8
end
