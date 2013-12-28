class Folder < ActiveRecord::Base
	belongs_to :store
	has_many :pins
end
