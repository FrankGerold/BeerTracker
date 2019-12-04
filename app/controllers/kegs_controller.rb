class KegsController < ApplicationController

    def new 
        @keg = Keg.new 
    end 

    def index
        @kegs = Keg.all
    end

    def show 
        find_keg
    end 

    def create 
        @keg = Keg.new(keg_params)
        if @keg.save 
            redirect_to keg_path(@keg)
        else 
            flash[:errors] = @keg.errors.full_messages
            redirect_to new_keg_path(@keg)
        end 
    end 
    
    def edit
        find_keg 
    end 

    def update 
        find_keg
        if @keg.update(keg_params)
            redirect_to keg_path(@keg)
        else 
            flash[:errors] = @keg.errors.full_messages
            redirect_to edit_keg_path(@keg)
        end 
    end 
    
    def destroy 
        find_keg
        @keg.destroy 
        redirect_to kegs_path 
    end 

    private 
    def find_keg 
        @keg = Keg.find(params[:id])
    end 
    def keg_params 
        params.require(:keg).permit(:name, :type)
    end 
end
