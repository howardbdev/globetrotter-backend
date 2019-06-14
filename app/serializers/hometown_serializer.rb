class HometownSerializer
  include FastJsonapi::ObjectSerializer
  attributes :city, :state, :country
end
