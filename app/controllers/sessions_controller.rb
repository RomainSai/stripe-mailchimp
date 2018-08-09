class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email])
      if User.all.include?(@user)
       log_in(@user)
       redirect_to @user
      else
       flash.now[:danger] = 'Invalid email'
       render 'new'
      end
    puts 'Jsuis al'
  end

  def destroy
  end
end
