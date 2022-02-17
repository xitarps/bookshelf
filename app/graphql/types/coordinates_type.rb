class Types::CoordinatesType < Types::BaseObject
  field :latitude,  Float, null: false, description: "Authors latitude"
  field :longitude, Float, null: false, description: "Authors longitude"

  def latitude
    object.first
  end
  def longitude
    object.last
  end
end
