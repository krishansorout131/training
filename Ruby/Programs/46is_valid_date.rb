#46. Given the parameters day, month and year, return whether that date is a valid date.is_valid_date(35, 2, 2020) ➞ false
# February doesn't have 35 days.

require 'date'

def is_valid_date(day, month, year)
  is_valid = Date.valid_date?(year, month, day)  
  return is_valid
end


p is_valid_date(35, 02, 2022)
p is_valid_date(28, 02, 2022)

=begin 
output:-- 

false
true

=end