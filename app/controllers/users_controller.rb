class UsersController < ApplicationController
  def index
    @users = User.all.order(:id).paginate(page: params[:page], per_page: 16)
    @users
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
