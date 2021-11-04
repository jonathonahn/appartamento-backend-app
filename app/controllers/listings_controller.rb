class ListingsController < ApplicationController
  before_action :authenticate_user
  def create
    listing = Listing.new(
      address: params[:address],
      group_id: current_user.group_id,
      status: params[:status],
      url: params[:url],
      beds: params[:beds],
      baths: params[:baths],
      squarefeet: params[:squarefeet]
    )
    if listing.save 
      render json: listing 
    else 
      render json: { errors: listing.errors.full_messages}, status: :bad_request
    end
  end

  def update
    listing = Listing.find(params[:id])
    listing.address = params[:address] || listing.address
    listing.status = params[:status] || listing.status
    listing.url = params[:url] || listing.url
    listing.beds = params[:beds] || listing.beds
    listing.baths = params[:baths] || listing.baths
    listing.squarefeet = params[:squarefeet] || listing.squarefeet
    if listing.save 
      render json: listing 
    else 
      render json: { errors: listing.errors.full_messages}, status: :bad_request
    end
  end
  
  def destroy
    listing = Listing.find_by(id: params[:id])
    listing.destroy
    render json: { message: "Listing successfully destroyed!" }
  end
end
