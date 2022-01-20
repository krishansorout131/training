#49. The 2nd of February 2020 is a palindromic date in both dd/mm/yyyy and mm/dd/yyyy format (02/02/2020). 
#Given a date in dd/mm/yyyy format, return true if the date is palindromic in both date formats, otherwise return false

require "date"

def palindromic_date(date)
  d1 = Date.parse(date)
  d2 = Date.strptime(date, "%m/%d/%Y")
  return true if d1 == d2
  false
  
end

p palindromic_date("02/02/2020")

# output:-- true