class UsersController < ApplicationController
layout "blog"

def show
	@user = User.find(params[:id])
	@mysubscriptions = current_user.subscriptions
	@ublogs = Blog.last(5)
end

end