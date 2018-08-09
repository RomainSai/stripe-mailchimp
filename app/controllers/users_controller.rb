class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(firts_name: params[:user][:firts_name], email: params[:user][:email])
  end

  def index
  end

  def show
  end

  def edit
  end

  def delete
  end
end
