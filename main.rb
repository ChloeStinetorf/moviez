require 'pg'
require 'pry'


conn = PG.connect(:dbname =>'moviez', :host => 'localhost')

 conn.exec( "select * from moviez" ) do |result|
  result.each do |row|
  binding.pry
  end
end
conn.close