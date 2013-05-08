require 'csv'
require 'typhoeus'

desc "Import park data in Denver"
task :import => :environment do
  denver_parks_url = "http://data.denvergov.org/download/gis/parks/csv/parks.csv"
  parks = Typhoeus.get(denver_parks_url).body
  CSV.parse(parks) do |row|
    puts row.inspect
  end
end
