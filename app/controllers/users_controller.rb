class UsersController < ApplicationController
  before_action :authenticate_user, except: [:create]
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if params[:group_id]
      user.group_id = params[:group_id]
    end
    if user.save
      render json: user, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    user = current_user 
    render json: user
  end

  def update
    user = current_user 
    user.name = params[:name] || user.name
    user.email = params[:email] || user.email
    user.image = params[:image] || user.image
    if params[:password] && params[:password_confirmation]
      user.password = params[:password]
      user.password_confirmation = params[:password_confirmation]
    end
    if user.save
      render json: user
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    user = current_user 
    user.destroy 
    render json: {message: "user kaboom"}
  end
end
