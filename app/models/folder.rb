class Folder < ActiveRecord::Base
	belongs_to :store
	has_many :pins

	self.per_page = 8
end
