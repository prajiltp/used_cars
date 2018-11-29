class CarsController < ApplicationController
  before_action :set_default_response_format, only: [:index]

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    unless @car.save
      render 'new'
    end
  end

  def index
    @cars = get_filtered_cars
  end

  private

  def car_params
    params.require(:car).permit(:creator_email, :price, :category,
                                :model, :make, :year_of_manufacture, :description)
  end

  def get_filtered_cars
    if params[:year] && params[:category]
      Car.where("year_of_manufacture = ? AND category = ?", params[:year],
                Car.categories["#{params[:category]}".to_sym]).order(created_at: :desc).limit(25)
    elsif params[:year]
      Car.where("year_of_manufacture = ?", params[:year]).order(created_at: :desc).limit(25)
    elsif params[:category]
      Car.where("category = ?",
                Car.categories["#{params[:category]}".to_sym]).order(created_at: :desc).limit(25)
    else
      Car.order(created_at: :desc).limit(25)
    end
  end

  def set_default_response_format
    request.format = :json
  end
end
