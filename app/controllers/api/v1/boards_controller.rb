class Api::V1::BoardsController < ApplicationController
  skip_before_action :authenticate_request, only: %i[login create]
  before_action :find_board, only: [:update]

  def index 
    @boards = Board.all 
    render json: @boards
  end 

  def create 
    @board = Board.find_or_create_by(board_params)
    if @board.save 
      render json: @board, status: :accepted 
    else 
      render json: {errors: @board.errors.full_messages}, status: :unprocessible_entity
    end 
  end

  def update
    @board.update(board_params)
    if @board.save 
      render json: @board, status: :accepted 
    else 
      render json: {errors: @board.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def destroy 
    @board.delete
  end

  def board_params 
    params.permit(:title, :content, :user_id)
  end

  def find_board 
    @board = Board.find(params[:id])
  end
end
