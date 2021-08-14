class PublicController < ApplicationController
  def index
    @properties = Property.all.order(created_at: :desc)
    @users = User.all
  end
end
