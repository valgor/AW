class UsersController < ApplicationController
  before_filter :authenticate_user!, :only => :show

  def index
    @users = User.all
    @users.delete(current_user)
  end

  def show
    @userProfile = User.find(params[:id])
  end

end
