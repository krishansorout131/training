#17. Write a function which takes an integer (positive) and return an array of Fibonacci number of each index in
#index position till given number.


  def fibonacci(n)
    arr =[]
    n1 = 0
    n2 = 1
    n3 = 0
    if n > 0
      num = n
      for i in 2 .. num + 1
        n3 = n1 + n2 
        arr.push(n3)
        n1 = n2
        n2 = n3
      end
      return arr
    else 
      puts "Number must be a positive Integer and greater then 0"
    end
  end
  # here 6 represent that function can print 6 indexs/times fibonacci
  a = fibonacci(6)
  print "#{a}\n" 

  # output: --
  # [1, 2, 3, 5, 8, 13]