class MealsController < ApplicationController
  def index
    @meals = Meal.order(:id)
  end

  def new
      @meal = Meal.new
      @meals = Meal.order(:id)
  end

  def create
      values = params.require(:meal).permit(:descricao)

      @meal = Meal.new values
      
      if @meal.save
          redirect_to root_url
      else
          render :new
      end
  end
end
