class User < ActiveRecord::Base

	has_secure_password
	
	has_many :posts
	
	def index
		@user = User.find(params[:id])
	end
	
	validates_uniqueness_of :username, :message=>"That username is taken."
	validates_uniqueness_of :email, :message=>"A KungAccount with that email already exists."
	
end
