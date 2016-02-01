class Api::DrinksController < ApplicationController
  before_filter :set_drink, only: [:show, :destroy]
  skip_before_filter :verify_authenticity_token

  def index
    render json: Drink.all
  end

  def show
    render json: @drink
  end

  def create
    @drink = Drink.new(drink_params)
    if @drink.save
      render status: 200, json:{
        message: "Successfully created.",
        drink: @drink
      }.to_json
    else
      render status: 422, json:{
        message: "Drink creation failed.",
        errors: @drink.errors
      }.to_json
    end
  end

  def destroy
    @drink.destroy
    render status: 200, json:{
      message: "Drink successfully deleted.",
      drink: @drink
    }.to_json
  end

  private

  def drink_params
    params.require(:drink).permit(:title)
  end

  def set_drink
    @drink = Drink.find(params[:id])
  end
end
