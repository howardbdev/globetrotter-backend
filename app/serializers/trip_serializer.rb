class TripSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :start_date, :end_date

  attribute :locations do |trip|
    trip.locations.map do |loc|
      {
        city: loc.city,
        state: loc.state,
        country: loc.country
      }
    end
  end

  # has_many :locations, serializer: LocationSerializer
end
