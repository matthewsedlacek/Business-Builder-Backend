class BusinessSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user, :name, :business_type, :business_question_answers, :business_questions, :business_goals
end
