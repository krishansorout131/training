#42. Create a function that takes time1 and time2 and return how many hours and minutes have passed between the two times

require "time"

def time_difference(time1, time2)
  hours = ((time1 - time2) / 3600).abs.to_i
  minutes= ((time1 - time2) / 60).to_i.abs
  minutes2 = minutes - (hours * 60)
  return "#{hours}:#{minutes2}\n"
end

t1 = Time.parse("10:00 am")
t2 = Time.parse("09:00 pm")
print time_difference(t1, t2)

# output:--   11:0
