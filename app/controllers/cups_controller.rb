class CupsController < ApplicationController
    def new 
        @cup = Cup.new 
    end 
    def create 
        @cup = Cup.new(params.require(:cup).permit(:rating, :user_id, :keg_id))
        if @cup.save 
            redirect_to user_path(@cup.user)
        else 
            flash[:errors] = @cup.errors.full_messages
            redirect_to new_cup_path(@cup)
        end 
    end 
end
