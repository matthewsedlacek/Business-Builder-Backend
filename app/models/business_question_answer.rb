class BusinessQuestionAnswer < ApplicationRecord
  belongs_to :business
  belongs_to :business_question
  has_many :business_goals
end
