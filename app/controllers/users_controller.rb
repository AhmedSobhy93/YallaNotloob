class UsersController < ApplicationController
	before_action :authenticate_user!
	def home 
		#@user = Users.find(params[:id])
    	@orders = Order.where(user_id: current_user.id)
    	@friends = User.where(id: Friend.where(user_id: current_user.id))
    	@friendOrders = Order.where(user_id: Friend.where(user_id: current_user.id))
    	# @OF = Order.where(user_id: friends.friend_id)
    	# @all = Order.joins(:friends,:users).where("friend.friend_id = user.current_user.id")
	end	
end
