#47. Given the month and year as numbers, return whether that month contains a Friday 13th.

require 'date'

def contains_friday(year,month)
  date = Date.new(year, month, 13)
  weekday = date.strftime("%A")
  return true if weekday == "Friday"
  false
end

p contains_friday(2022,5)

#output:-- true