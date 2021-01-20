class DashboardController < ApplicationController

  def index
      @weights = Weight.order(:peso_atual).where("user_id = ?", current_user.id)
  end

end
