class BusinessesController < ApplicationController
    def index
        businesses = Business.all
        render json: BusinessSerializer.new(businesses)
    end
    
    def show
        business = Business.find_by(id: params[:id])
        render json: BusinessSerializer.new(business)
    end

    def create
        business = Business.create(business_params)
        render json: BusinessSerializer.new(business)
    end

    def edit
        business = Business.update(business_params)
        render json: BusinessSerializer.new(business)
    end

    def destroy
        business = Business.find(params[:id])
        business.destroy
        render json: {info: "Deleted"}
    end

    private
    def business_params
        params.require(:business).permit(:business_id, :user_id, :business_type_id)
    end
end
