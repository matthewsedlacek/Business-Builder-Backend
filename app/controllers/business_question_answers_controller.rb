class BusinessQuestionAnswersController < ApplicationController
    def index
        business_question_answers = BusinessQuestionAnswer.all
        render json: BusinessQuestionAnswerSerializer.new(business_question_answers)
    end
    
    def show
        business_question_answer = BusinessQuestionAnswer.find_by(id: params[:id])
        render json: BusinessQuestionAnswerSerializer.new(business_question_answer)
    end

    def create
        business_question_answer = BusinessQuestionAnswer.create(business_question_answer_params)
        render json: BusinessQuestionAnswerSerializer.new(business_question_answer)
    end

    def edit
        business_question_answer = BusinessQuestionAnswer.update(business_question_answer_params)
        render json: BusinessQuestionAnswerSerializer.new(business_question_answer)
    end

    def destroy
        business_question_answer = BusinessQuestionAnswer.find(params[:id])
        business_question_answer.destroy
        render json: {info: "Deleted"}
    end

    private
    def business_question_answer_params
        params.require(:business_question_answer).permit(:business_question_id, :buisness_id, :answer)
    end
end
