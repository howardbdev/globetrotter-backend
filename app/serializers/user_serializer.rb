class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :name
  belongs_to :hometown
end
