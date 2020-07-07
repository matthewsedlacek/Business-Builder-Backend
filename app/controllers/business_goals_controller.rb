class BusinessGoalsController < ApplicationController
    def index
        business_goals = BusinessGoal.all
        render json: BusinessGoalSerializer.new(business_goals)
    end
    
    def show
        business_goal = BusinessGoal.find_by(id: params[:id])
        render json: BusinessGoalSerializer.new(business_goal)
    end

    def create
        business_goal = BusinessGoal.create(business_goal_params)
        render json: BusinessGoalSerializer.new(business_goal)
    end

    def edit
        business_goal = BusinessGoal.update(business_goal_params)
        render json: BusinessGoalSerializer.new(business_goal)
    end

    def destroy
        business_goal = BusinessGoal.find(params[:id])
        business_goal.destroy
        render json: {info: "Deleted"}
    end

    private
    def business_goal_params
        params.require(:business_goal).permit(:business_goal_id)
end
