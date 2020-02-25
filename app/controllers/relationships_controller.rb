class RelationshipsController < ApplicationController

    def index
        @relationships = Relationship.all
    end

    def show
        @relationship = Relationship.find(params[:id])
    end

end
