class PagesController < ApplicationController
    def home
        @users = User.all 
        @kegs = Keg.all 
        @floors = Floor.all 
    end 
end 