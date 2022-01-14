#Create a function that takes an array of strings and integers, and filters out the array so that it returns an 
#array of integers only.

def filter(arr)
  arr1 = []
  for i in 0..arr.length-1
    if arr[i].class == Integer
      arr1.push(arr[i])
    end    
  end 
  return arr1
end    

array = [1,2,"hello",56,"world",2.3,4.5,8]
print "#{filter(array)}\n"

#output :-
#[1, 2, 56, 8]
