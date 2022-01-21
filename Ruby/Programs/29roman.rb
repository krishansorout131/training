=begin
29. Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
Symbol  Value
I        1
V        5
X        10
L        50
C        100
D        500
M        1000
Write a function which takes roman number and return integer corresponding to that roman number.
=end

def roman(str)
  romans = { I: 1, V: 5, X: 10, L: 50, C: 100, D: 500, M: 1000 }
  result = (romans.values_at(str[str.length - 1].to_sym)).join.to_i
  for i in (str.length - 2).downto(0)
    if (romans.values_at(str[i].to_sym)).join.to_i < (romans.values_at(str[i + 1].to_sym)).join.to_i
      result -= (romans.values_at(str[i].to_sym)).join.to_i
    else
      result += (romans.values_at(str[i].to_sym)).join.to_i
    end
  end
  return result
end

puts roman(:V)
puts roman(:XI)
puts roman(:C)

=begin
output:--
5
11
100
=end