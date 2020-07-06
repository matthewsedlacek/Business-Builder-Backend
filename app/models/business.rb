class Business < ApplicationRecord
  belongs_to :user
  belongs_to :business_type
end
