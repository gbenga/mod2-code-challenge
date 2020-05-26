class AppearancesController < ApplicationController
    
    def show
        @appearance = Appearance.find(params[:id])
    end

    def new
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.create(appearance_params)
        if @appearance.valid?
            redirect_to appearance_path(@appearance.id)
        else
            render "new"
        end
        
    end


    private

    def appearance_params
        params.require(:appearance).permit(:rating,:guest_id,:episode_id)
    end
end
