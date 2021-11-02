class GroupsController < ApplicationController
  before_action :authenticate_user, except: [:create]
  def show
    group = current_user.group
    render json: group, include: ["listings.comments.user", :users]
  end

  def create 
    group = Group.new(
      name: params[:name],
      image: params[:image],
    )
    if group.save 
      render json: group 
    else 
    render json: { errors: group.errors.full_messages}, status: :bad_request
    end
  end

  def update
    group = current_user.group
    group.name = params[:name] || group.name
    group.image = params[:image] || group.image
    if group.save 
      render json: group 
    else 
      render json: { errors: group.errors.full_messages}, status: :bad_request
    end
  end

  def destroy
    group = current_user.group
    group.destroy 
    render json: {message: "Group destroyed!"}
  end
end
