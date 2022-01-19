#45. Given a range of years as a string, return the number of leap years there are within the range (inclusive).

require 'date'

def leap_years(str)
  arr = [] 
  array = str.split('..').map {|i| i.to_i}
  for i in array[0] .. array[1]
    if Date.new(i).leap? == true
      arr.push(i)
    end
  end      
  return arr
end

range = "1999 .. 2021"

p leap_years(range)

# output:-- [2000, 2004, 2008, 2012, 2016, 2020]