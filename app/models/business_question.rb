class BusinessQuestion < ApplicationRecord
  belongs_to :business
  has_many :business_question_answers
end
