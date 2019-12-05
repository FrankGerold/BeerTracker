class CupsController < ApplicationController
    def new
        @cup = Cup.new
    end
    def create
        @white = params.require(:cup).permit(:rating, :user_id, :keg_id, :opt_floor)
        @cup = Cup.new(params.require(:cup).permit(:rating, :user_id, :keg_id))
        if @cup.save
          if params[:cup][:opt_floor]
            @kegfloor = KegFloor.create(floor_id: @white[:opt_floor], user_id: @white[:user_id], keg_id: @white[:keg_id])
          end
            flash[:notice] = "Congratulations! You have reviewed this beer!"
            redirect_to keg_path(@cup.keg)
        else
            flash[:errors] = @cup.errors.full_messages
            redirect_to keg_path(@cup.keg)
        end
    end
end
