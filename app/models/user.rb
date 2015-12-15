class User < ActiveRecord::Base

	has_secure_password
	
	has_many :posts
	
	def index
		@user = User.find(params[:id])
	end
	
end
