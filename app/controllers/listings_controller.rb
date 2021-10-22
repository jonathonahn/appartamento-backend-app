class ListingsController < ApplicationController
  def create
    listing = Listing.new(
      address: params[:address],
      group_id: params[:group_id],
      status: params[:status],
      url: params[:url]
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
    listing.group_id = params[:group_id] || listing.group_id
    listing.status = params[:status] || listing.status
    listing.url = params[:url] || listing.url
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