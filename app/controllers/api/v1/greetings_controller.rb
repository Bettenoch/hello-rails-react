class Api::V1::GreetingsController < ApplicationController
  def index
    random_greeting = Greeting.order('RANDOM()').first
    render json: { message: random_greeting.message }
  end

  def create
    greeting = Greeting.new(greeting_params)

    if greeting.save
      render json: greeting, status: :created
    else
      render json: { errors: greeting.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    greeting = Greeting.find_by(id: params[:id])

    if greeting
      render json: greeting
    else
      render json: { error: 'Greeting not found' }, status: :not_found
    end
  end

  def destroy
    greeting = Greeting.find_by(id: params[:id])

    if greeting
      greeting.destroy
      head :no_content
    else
      render json: { error: 'Greeting not found' }, status: :not_found
    end
  end

  private

  def greeting_params
    params.require(:greeting).permit(:message)
  end
end
