#48. Given a date, return how many days date is away from 2023 (end date not included). date will be in
#mm/dd/yyyy format.
require 'date'

def date_away(date1)
  date2 = Date.strptime('01/01/2023', '%m/%d/%Y')

  return date2.jd - date1.jd
end
date = Date.strptime('12/25/2022', '%m/%d/%Y')
p date_away(date)

# output:-- 7 
