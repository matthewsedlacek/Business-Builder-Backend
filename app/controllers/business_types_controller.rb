class BusinessTypesController < ApplicationController
    def index
        business_types = BusinessType.all
        render json: BusinessTypeSerializer.new(business_types)
    end
    
    def show
        business_type = BusinessType.find_by(id: params[:id])
        render json: BusinessTypeSerializer.new(business_type)
    end

    def create
        business_type = BusinessType.create(business_type_params)
        render json: BusinessTypeSerializer.new(business_type)
    end

    def edit
        business_type = BusinessType.update(business_type_params)
        render json: BusinessTypeSerializer.new(business_type)
    end

    def destroy
        business_type = BusinessType.find(params[:id])
        business_type.destroy
        render json: {info: "Deleted"}
    end

    private
    def business_type_params
        params.require(:business_type).permit(:business_type_id)
    end
end
