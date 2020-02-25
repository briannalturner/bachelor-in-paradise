class WomenController < ApplicationController

    def index
        @women = Woman.all
    end

    def show
        @woman = Woman.find(params[:id])
    end

    def new
        @woman = Woman.new
    end

    def create

    end

end
