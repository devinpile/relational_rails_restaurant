class ShiftsController < ApplicationController 
    def index 
        @shifts = Shift.all
    end

    def show 
        @shift = Shift.find(params[:id])
    end 
end