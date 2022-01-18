# 40. Write a function which takes year and returns how many Saturday 14ths there are in a given year.

require 'date'

def saturdays(year)
  count = 0
  for months in 1..12
    date = Date.new(year, months, 14)
    weekday = date.strftime("%A")
    if weekday == "Saturday"
      count += 1
    end
  end
  return count
end


p saturdays(2021)

#output:   1
