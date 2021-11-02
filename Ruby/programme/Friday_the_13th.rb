

require 'date'
def has_friday_13(month,year)
  t = Date.new(year,month,13).friday?
  puts t
end
month = 0
year = 0
has_friday_13 3,2020
has_friday_13 10,2017
has_friday_13 1,1985