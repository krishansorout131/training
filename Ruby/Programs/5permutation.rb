# 5. Given a string S, print all permutations of a given string.

def permutation(str)
  perm = str.codepoints
  perm.permutation(2) {|i| p i.pack('U*')}
end

permutation("god")

=begin
output:-- 
"go"
"gd"
"og"
"od"
"dg"
"do"
=end