=begin
43. Write a function that, given a date (in the format MM/DD/YYYY), returns the day of the week as a string.
Each day name must be one of the following strings: "Sunday", "Monday", "Tuesday", "Wednesday","Thursday", "Friday", or "Saturday".
To illustrate, the day of the week for "12/07/2016" is "Wednesday".
=end

require 'date'

def weekday(date)
  weekday = Date.new(date).wday  
  case weekday
  when 1
    a = "Sunday"
  when 2 
    a = "Monday"
  when 3
    a = "Tuesday"        
  when 4
    a = "Wednesday"
  when 5
    a = "Thursday"
  when 6 
    a =  "Friday"
  else 
    a = "Saturday"
    
  end        
  return a
end

p weekday(19/01/2022)

#output:--  "Wednesday"