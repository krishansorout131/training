=begin 
41. Create a function that converts dates from one of five string formats:
"January 9, 2019" (MM D, YYYY)
"Jan 9, 2019" (MM D, YYYY)
"01/09/2019" (MM/DD/YYYY)
"01-09-2019" (MM-DD-YYYY)
"01.09.2019" (MM.DD.YYYY)
The return value will be an array formatted like: [MM, DD, YYYY], where MM, DD, and YYYY are all integers.
=end

require 'date'

def convert_formats(date)
  if date.include?(".")
    convert = Date.strptime(date,"%m.%d.%Y")
  elsif date.include?("/")
    convert = Date.strptime(date,"%m/%d/%Y")
  elsif date.include?("-")
    convert = Date.strptime(date,"%m-%d-%Y")  
  else
  convert = Date.parse(date)
  end
  return convert.month,convert.day,convert.year 
end

p convert_formats("January 19, 2019")
p convert_formats("Jan 10, 2020")
p convert_formats("01/11/2021")
p convert_formats("01-12-2020")
p convert_formats("01.13.2019")

=begin outputs:--
[1, 19, 2019]
[1, 10, 2020]
[1, 11, 2021]
[1, 12, 2020]
[1, 13, 2019]
=end
