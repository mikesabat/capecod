class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :pins
         validates :name, presence: true
         after_create :create_a_customer

         def create_a_customer
         	puts "Creat a Customer Method ran"         	
         end

         

end
