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

    private

    def man_params
        params.require(:man).permit(:name, :hometown, :age)
    end
end
