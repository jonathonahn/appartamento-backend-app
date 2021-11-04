class UsersController < ApplicationController
  before_action :authenticate_user, except: [:create]
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    
    if user.save
      if params[:group_id]
        user.update(group_id: params[:group_id])
      else
        group = Group.create(
          name: params[:group_name]
        )
        user.update(group_id: group.id)
      end
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
    if user.group.users.length == 1
      user.group.destroy
    else
      user.destroy 
    end
    render json: {message: "user kaboom"}
  end
end
