class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      'user created'
    else
      'Something went wrong'
    end
  end

  def login
    @user = User.find_by(username: params[:username], password: params[:password])
    # @user = User.find_by(user_params)

    if @user
      flash[:notice] = 'Login successful'
      # redirect_to
    else
      flash[:alert] = 'Login failed'
      # redirect_to
    end
  end

  private

  def user_params
    params.permit(:username, :password)
  end
end
