#CSV parser

#Implement a simple CSV (Comma-Separated Values) parser that reads data from a CSV file and transforms it into an array of hashes,
#with each hash representing a row of the CSV.

require 'csv'

CSV.foreach(("data.csv"), headers: true, col_sep: ",") do |line|
  person = {}
  line.each{|i, v| person[i] = v}
  puts person
end
