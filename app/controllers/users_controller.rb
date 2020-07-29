class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all.order(:id).paginate(page: params[:page], per_page: 16)
  end

  def show
    @user = User.find(params[:id])
  end

  private
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user == @user
    end
end
