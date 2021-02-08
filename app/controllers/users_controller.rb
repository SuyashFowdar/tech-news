class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def sign_up
    @user = User.new
  end

  def sign_in
    @user = User.new
  end

  def create_session
    result = User.where(name: params[:user][:name])

    if result.empty?
      flash[:alert] = 'User not found.'
      redirect_to users_sign_in_path
    else
      user = result.first
      session[:user_id] = user[:id]
      session[:user_name] = user[:name]
      redirect_to root_path
    end
  end

  def destroy_session
    reset_session
    flash[:notice] = 'Logged out successfully!'
    redirect_to root_path
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user[:id]
      session[:user_name] = @user[:name]
      flash[:notice] = 'User was successfully created.'
      redirect_to root_path
    else
      redirect_to users_sign_up_path
      flash[:alert] = 'User was not created!'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
