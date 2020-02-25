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
        @woman = Woman.create(woman_params)
        redirect_to woman_path(@woman)
    end

    def edit
        @woman = Woman.find(params[:id])
    end

    def update
        @woman = Woman.find(params[:id])
        @woman.update(woman_params)
        redirect_to woman_path(@woman)
    end

    def destroy
        @woman = Woman.find(params[:id])
        @woman.destroy
        redirect_to women_path
    end

private
    def woman_params
        params.require(:woman).permit(:name, :age, :hometown)
    end

end
