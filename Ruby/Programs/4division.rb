#4. Given an n-digit large number in form of string, check whether it is divisible by 7 or not. Print 1 if divisible
# by 7, otherwise 0

  def division(str)
    num = str.to_i
    if num % 7 == 0
      return 1
    else
      return 0
    end     
  end
  
  divisible = division("700")
  print "#{divisible}\n"
  
  # output:--  1
   