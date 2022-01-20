#44. Create a function that takes the month and year (as integers) and returns the number of days in that month.

require 'date'
def no_of_days(year,month)
  return Date.new(year, month,-1).day
end

p no_of_days(2020,2)

#output:-- 29