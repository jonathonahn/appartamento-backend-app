class GroupsController < ApplicationController
  before_action :authenticate_user
  def show
    group = current_user.group 
    render json: group
  end

  def create 
    group = Group.new(
      name: params[:name],
      image: params[:image]
    )
    if group.save 
      render json: group 
    else 
    render json: { errors: group.errors.full_messages}, status: :bad_request
    end
  end

  def update
    group = Group.find(params[:id])
    group.name = params[:name] || group.name
    group.image = params[:image] || group.image
    if group.save 
      render json: group 
    else 
      render json: { errors: group.errors.full_messages}, status: :bad_request
    end
  end

  def destroy
    group = Group.find(params[:id])
    group.destroy 
    render json: {"Group destroyed!"}
  end
end
