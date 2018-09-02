class Api::V1::ImagesController < ApplicationController
  skip_before_action :authenticate_request, only: %i[login create]
  before_action :find_image, only: [:update]
  
  def index 
    @images = Image.all 
    render json: @images
  end 

  def create 
    @image = Image.find_or_create_by(image_params)
    if @image.save 
      render json: @image, status: :accepted 
    else 
      render json: {errors: @image.errors.full_messages}, status: :unprocessible_entity
    end 
  end

  def update
    @image.update(image_params)
    if @image.save 
      render json: @image, status: :accepted 
    else 
      render json: {errors: @image.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def destroy 
    @image.delete
  end

  def image_params 
    params.permit(:board_id, :user_id, :content)
  end

  def find_image 
    @image = Image.find(params[:id])
  end
end
