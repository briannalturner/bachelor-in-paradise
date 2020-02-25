class MenController < ApplicationController

    def index
        @men = Man.all
    end

    def show
        @man = Man.find(params[:id])
    end

    def new
        @man = Man.new
    end

    def create
        @man = Man.create(man_params)

        redirect_to man_path(@man)
    end

    def edit
        @man = Man.find(params[:id])
    end

    def update
        @man = Man.find(params[:id])
        @man.update(man_params)
        redirect_to man_path(@man)
    end

    def destroy
        @man = Man.find(params[:id])
        @man.destroy
        redirect_to men_path
    end

    private

    def man_params
        params.require(:man).permit(:name, :hometown, :age)
    end
end
