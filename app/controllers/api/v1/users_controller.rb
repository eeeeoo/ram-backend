class Api::V1::UsersController < ApplicationController
  skip_before_action :authenticate_request, only: %i[login create]
  before_action :find_user, only: [:update, :index]

  def index
    render json: @user
  end
  
  def test 
    render json:{
      message: 'You have passed auth'
    }
  end 
  def create
    @user = User.create(user_params)
   if @user.save
    render json: @user, status: :accepted 
   else
    render json: @user.errors, status: :unprocessible_entity
   end 
  end

  def login
    authenticate params[:email], params[:password]
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages },  status: :unprocessible_entity
    end
  end

  def destroy
    @user.delete
  end

  def find_user
    @user = current_user
  end
  
  private

  def user_params
    params.permit(
      :name,
      :email,
      :password
    )
  end

  def authenticate(email, password)
    command = AuthenticateUser.call(email, password)

    if command.success?
      render json: {
        access_token: command.result,
        message: 'Login Successful',
        email: email,
        password: password
      }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
   end
end
