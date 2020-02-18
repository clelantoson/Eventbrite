class UsersController < ApplicationController

  before_action :authenticate_user!, only: [:show]
  before_action :current_user_is_same_as_requested, only: [:show]

  def show
    @user = User.find(params['id'])
  end

  def new

  end

  private
  def current_user_is_same_as_requested
    if current_user.id == params['id'].to_i
      return true
    else 
      redirect_to root_path   
    end
  end
end
