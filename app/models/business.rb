class Business < ApplicationRecord
  belongs_to :user
  belongs_to :business_type
  has_many :business_questions
  has_many :business_goals, through: :business_questions
end
