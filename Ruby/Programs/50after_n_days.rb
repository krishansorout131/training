=begin 
50. If today was Monday, in two days, it would be Wednesday.
Create a function that takes in an array of days as input and the number of days to increment by. Return an
array of days after n number of days has passed.
after_n_days(["Thursday", "Monday"], 4) ➞ ["Monday", "Friday"]
=end

def after_n_days(days, k)
  arr = []
  arr2 = ["monday", "tuesday", "wednesday", "thursday", "friday", "saturday", "sunday"]
  for i in 0...days.length
    for j in 0...arr2.length
      if days[i].downcase == arr2[j].downcase
        a = j + k
        if a <= 6
          arr.push(arr2[a])
        elsif a >= 7
          g = a - 7
          arr.push(arr2[g])
        end
      end
    end
  end
  return arr
end
arr = ["Thursday","Monday"]
k = 4
p after_n_days(arr,4)

# output;-- ["monday", "friday"]