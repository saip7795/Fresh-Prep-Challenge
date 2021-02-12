json.extract! location, :id, :street, :city, :country, :zipcode, :latitude, :longitude, :created_at, :updated_at
json.url location_url(location, format: :json)
