class UsersController < ApplicationController
  def index
    @users = User.all.order(created_at: :desc)
  end

  def show
    @user = User.find(params[:id])
    @properties = Property.where( user_id: @user)
  end
end
