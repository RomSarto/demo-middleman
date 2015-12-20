require "google/api_client"
require "google_drive"
require 'json'

session = GoogleDrive.saved_session("config.json")

google_spreadsheet_key = '0AornRwZY3X2FdDdpRUhnMG1wMWJOdEtGTGZDbmNTYkE&usp'
rows = session.spreadsheet_by_key(google_spreadsheet_key).worksheets[0].rows

companies = Array.new

rows[1..-1].each do |row|
  companies << { name: row[0], url: row[1], category: row[2] }
end


# Write array into the file as json
File.open('data/companies.json', 'w') { |f| f << companies.to_json }
