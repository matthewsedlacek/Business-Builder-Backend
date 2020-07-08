class BusinessQuestionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :question, :title
end
