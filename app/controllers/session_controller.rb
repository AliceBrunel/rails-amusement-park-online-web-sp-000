class SessionController < ApplicationController
<<<<<<< HEAD
skip_before_action :verify_user_is_authenticated, only: [:new, :create]

=======
skip_before_action :verify_user_is_authenticated, only: [:new,:create]
>>>>>>> 278cb8f3609281d501f1fb94a294f3924cb000e3
  def new
    @user = User.new
  end

  def create
    if @user = User.find_by(name:params[:user][:name])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def destroy
    session.delete("user_id")
    redirect_to root_path
  end
<<<<<<< HEAD

=======
>>>>>>> 278cb8f3609281d501f1fb94a294f3924cb000e3
end
