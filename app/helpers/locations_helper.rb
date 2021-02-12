require 'csv'
module LocationsHelper
	def polygon1
	  file_name = "polygon_data_1"
	  polygon_points =[]
      CSV.foreach("#{Rails.root}/#{file_name}.csv", headers: true) do |row|
      	polygon_points += [Geokit::LatLng.new(row['latitude'],row['longitude'])]
      end
      polygon1 =  (polygon_points.size >2) ? Geokit::Polygon.new(polygon_points) : nil
      return polygon1
	end

	def polygon2
	  file_name = "polygon_data_2"
	  polygon_points =[]
      CSV.foreach("#{Rails.root}/#{file_name}.csv", headers: true) do |row|
      	polygon_points += [Geokit::LatLng.new(row['latitude'],row['longitude'])]
      end
      polygon2 = (polygon_points.size >2) ? Geokit::Polygon.new(polygon_points) : nil
      return polygon2
	end

	def fsa_code
		fsa_code= "N1R"
	end
end
