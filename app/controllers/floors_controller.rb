class FloorsController < ApplicationController

  def index
    @floors = Floor.all
  end

  def show
    find_floor
  end

  private

  def find_floor
    @floor = Floor.find(params[:id])
  end

end
