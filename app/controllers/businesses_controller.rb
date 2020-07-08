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
        binding.pry
        business = Business.create(business_params)
        business = business.addDefaultGoals
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
        params.require(:business).permit(:user_id, :business_type_id, :name, business_question_answers_attributes: [:answer, :business_question_id])
    end
end
