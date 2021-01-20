class WeightsController < ApplicationController

    def index
        @weights = Weight.order(:peso_atual)
    end

    def new
        @weight = Weight.new
        @weights = Weight.order(:peso_atual)
    end

    def create
        values = params.require(:weight).permit(:peso_atual)

        @weight = Weight.new values
        @weight.user_id = current_user.id
        
        if @weight.save
            redirect_to root_url
        else
            render :new
        end
    end

end
