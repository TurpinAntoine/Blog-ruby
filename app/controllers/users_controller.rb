class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @jobs = @user.jobs
  end

  def new
    @user = User.new
  end

  def create
    usertest = User.create(user_params)

    redirect_to root_path if usertest.persisted?
  end

  def edit
    @users = User.find(1)
  end

  def update

  end

  def destroy
    @users = User.find(1)
  end


  private
  def user_params
    params.require(:user).permit!
  end


end
