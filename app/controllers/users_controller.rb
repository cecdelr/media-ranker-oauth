class UsersController < ApplicationController
  def index
    if session[:user_id] != nil
      @users = User.all
    else
      flash[:result_text] = "You must be logged in to see the list of users."
      redirect_to root_path
    end
  end

  def show
    if session[:user_id] != nil
      @user = User.find_by(id: params[:id])
      render_404 unless @user
    else
      flash[:result_text] = "You must be logged in to see a user's profile."
      redirect_to root_path
    end
  end
end
