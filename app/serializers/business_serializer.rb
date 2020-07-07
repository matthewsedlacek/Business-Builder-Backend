class BusinessSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user, :title, :type, :business_question_answers, :business_questions, :business_goals
end
