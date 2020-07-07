class BusinessGoalSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :status, :steps, :business_question_answer
end
