class KegFloorsController < ApplicationController
    def new 
        @keg_floor = KegFloor.new 
    end 
    def create 
        @keg_floor = KegFloor.new(params.require(:keg_floor).permit(:floor_id, :user_id, :keg_id))
        if @keg_floor.save 
            @user = @keg_floor.user
            redirect_to user_path(@user)
        else 
            flash[:errors] = @keg_floor.errors.full_messages
            redirect_to new_keg_floor_path(@keg_floor)
        end 
    end 
end
