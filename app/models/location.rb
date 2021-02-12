class Location < ApplicationRecord
  include LocationsHelper
   geocoded_by :address
   validates :street, :presence => true
   validates :country, :presence => true
   after_validation :geocode
   
   attr_accessor  :check_fsa, :check_polygon1, :check_polygon2

	def address
		[street,country].join(',')
	end

	def check_fsa
		return ((zipcode[0..2]).downcase == fsa_code.downcase ? true : false)  unless (zipcode.blank? || fsa_code.blank?)
		return "No FSA / Zip Code Provided"
	end

	def point
		point = (longitude && latitude) ? Geokit::LatLng.new(latitude,longitude) : nil
	end

	def check_polygon1
		return polygon1.contains?(point) unless point.blank?
		return "Location not detected"
	end

	def check_polygon2
		return polygon2.contains?(point) unless point.blank?
		return "Location not detected"
	end
end
