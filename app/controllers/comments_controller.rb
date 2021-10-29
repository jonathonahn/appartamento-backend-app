class CommentsController < ApplicationController
  before_action :authenticate_user 
  def create
    comment = Comment.new(
      text: params[:text],
      listing_id: params[:listing_id],
      user_id: current_user.id
    )
    if comment.save 
      render json: comment 
    else 
      render json: { errors: comment.errors.full_messages}, status: :bad_request
    end
  end

  def destroy 
    comment = Comment.find_by(id: params[:id])
    if comment.user_id == current_user.id 
      comment.destroy
      render json: { message: "comment successfully destroyed!" }, status: :accepted
    else
      render json: { message: "not your comment how did you get here!" }, status: :unauthorized
    end
  end
end
