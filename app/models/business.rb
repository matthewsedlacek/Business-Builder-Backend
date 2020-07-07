class Business < ApplicationRecord
  belongs_to :user
  belongs_to :business_type
  has_many :business_questions_answers
  has_many :business__questions, through: :business_questions_answers
  has_many :business_goals, through: :business_questions_answers
end
