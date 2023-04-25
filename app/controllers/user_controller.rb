class UserController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = current_user
    render json: @user
  end

  def add_money_form
    @user = current_user
    render "add_money_form"
  end

  def add_money
    @user = current_user
    @user.increment!(:balance, params[:user][:balance].to_i)
    redirect_to "/me"
  end

  def transactions
    @user = current_user
    @transactions = Transaction.where(userId: @user.id)
    render json: @transactions
  end




end
