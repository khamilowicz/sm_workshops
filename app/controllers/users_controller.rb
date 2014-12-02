class UsersController < ApplicationController 

  before_action :authenticate_user!
  before_action :only_owner, only: [:edit, :update, :destroy]

  def index
    @users = User.all 
  end

  def show
    @user = User.find params[:id] 
  end

  def edit
    @user = User.find params[:id] 
  end

  def update
    @user = User.find params[:id] 
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find params[:id]
    @user.destroy
    redirect_to users_path 
  end

  private

  def only_owner
    if current_user.id.to_s != params[:id] 
      redirect_to users_path
    end
  end

  def user_params
    params.require(:user).permit(:name, :last_name)   
  end
end
