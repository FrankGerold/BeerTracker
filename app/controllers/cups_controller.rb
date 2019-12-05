class CupsController < ApplicationController
    def new 
        @cup = Cup.new 
    end 
    def create 
        @cup = Cup.new(params.require(:cup).permit(:rating, :user_id, :keg_id))
        if @cup.save 
            flash[:notice] = "Congratulations! You have reviewed this beer!"
            redirect_to keg_path(@cup.keg)
        else 
            flash[:errors] = @cup.errors.full_messages
            redirect_to keg_path(@cup.keg)
        end 
    end 
end
