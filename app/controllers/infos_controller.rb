class InfosController < ApplicationController
  before_action :set_info, only: [:edit, :update, :destroy]

    def index
        @diets = Diet.order(:refeicao)
        @infos = Info.order(:data_inicio)
        @weights = Weight.order(:peso_atual)
    end

    def new
        @infos = Info.new
        @diets = Diet.new
        @weights = Weight.new
    end

    def edit
        @infos = Info.order(:data_inicio).where("user_id = ?", current_user.id)

        render :edit
    end

    def update
        if @info.update info_params
            redirect_to diets_path
        else
            :edit
        end
    end

    def create
        @info = Info.new info_params
        @info.user_id = current_user.id

        if @info.save
            redirect_to new_diet_path
        else

            render :new
        end
    end

    def destroy
        @info.destroy
        redirect_to diets_path
    end

    def search
        info = params[:data_inicio]
        @infos = Info.where "data_inicio like ?", "%#{data_inicio}%"
    end


    # Funções privadas do controller
    private


    def info_params
        params.require(:info).permit(:data_inicio, :data_fim, :peso, :peso_ideal, :altura)
    end

    def set_info
        @info = Info.find(params[:id])
    end
end
