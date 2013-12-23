class Folder < ActiveRecord::Base
	has_one :store
	has_many :pins
end
