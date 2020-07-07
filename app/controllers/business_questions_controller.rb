class BusinessQuestionsController < ApplicationController
    def index
        business_questions = BusinessQuestion.all
        render json: BusinessQuestionSerializer.new(business_questions)
    end
    
    def show
        business_question = BusinessQuestion.find_by(id: params[:id])
        render json: BusinessQuestionSerializer.new(business_question)
    end

    def create
        business_question = BusinessQuestion.create(business_question_params)
        render json: BusinessQuestionSerializer.new(business_question)
    end

    def edit
        business_question = BusinessQuestion.update(business_question_params)
        render json: BusinessQuestionSerializer.new(business_question)
    end

    def destroy
        business_question = BusinessQuestion.find(params[:id])
        business_question.destroy
        render json: {info: "Deleted"}
    end

    private
    def business_question_params
        params.require(:business_question).permit(:business_question_id)
    end
end
