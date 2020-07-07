class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :business
end
