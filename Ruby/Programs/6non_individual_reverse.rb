#6. Given a String S, reverse the string without reversing its individual words. Words are separated by dots.

  def reverse_string(str)
    str1 = str.split('.')
    str2 = ""
    for i in 0 ... str1.length
      len = str1[i].length-1
      for j in len.downto(0)
        str2 << str1[i][j]
      end
      if (i != str1.length-1)
        str2 << '.'
      end
    end 
    return str2 
  end

  p = reverse_string("my.name.is.krishan")
  print "#{p}\n"

  # output :- ym.eman.si.nahsirk