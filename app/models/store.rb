class Store < ActiveRecord::Base
	has_many :folders
	has_many :pins, through: :folders
end
