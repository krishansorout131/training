# Write a function to return reverse of a string using recursion.

def reverse(str)
    len = str.length
    print str[len - 1]
    str.chop!
    if len >= 1
      reverse(str) 
    end  
  end    
  
  reverse("Hello world")
  
  # output:-
  # dlrow olleH