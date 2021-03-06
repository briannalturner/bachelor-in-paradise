class RelationshipsController < ApplicationController

    def index
        @relationships = Relationship.all
    end

    def show
        @relationship = Relationship.find(params[:id])
    end

    def new
        @relationship = Relationship.new
    end

    def create
        @relationship = Relationship.create(relationship_params)
        redirect_to relationship_path(@relationship)
    end

    def destroy
        @relationship = Relationship.find(params[:id])
        @relationship.destroy
        redirect_to relationships_path
    end

    def breakup
        @relationship = Relationship.find(params[:id])
        @relationship.update(status: "over", end_date: Time.now.to_date)
        redirect_to relationship_path(@relationship)
    end

private
    def relationship_params
        params.require(:relationship).permit(:woman_id, :man_id, :status, :start_date, :end_date)
    end

end
