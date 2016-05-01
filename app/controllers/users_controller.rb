class UsersController < ApplicationController
	before_action :authenticate_user!
	def home 
		#@user = Users.find(params[:id])
    	@orders = Order.all
    	#where(user_id: params[:id])
	end	
end
