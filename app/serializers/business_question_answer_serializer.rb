class BusinessQuestionAnswerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :answer, :business, :business_question, :business_goals
end
