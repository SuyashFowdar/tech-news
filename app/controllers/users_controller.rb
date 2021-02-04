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
    redirect_to root_path
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :sign_up, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
