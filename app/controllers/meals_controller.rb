class MealsController < ApplicationController
  def index
    @meals = Meal.order(:id)
  end

  def new
    @meal = Meal.new
    @meals = Meal.order(:id)
  end

  def create
    meal = Meal.new(meals_params)
    
    meal.save
  end

  # Meals params
  private
  def meals_params
      params.permit(:descricao, :created_at, :updated_at)
  end
end
