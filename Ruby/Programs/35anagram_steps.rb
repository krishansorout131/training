=begin
Q. You are given two strings of the same length s and t. In one step you can choose any character of t and
replace it with another character. Return the minimum number of steps to make t an anagram of s. An
Anagram of a string is a string that contains the same characters with a different (or the same) ordering.
=end


def anagram(s, t)
  count = 0
  for i in "a".."z"
    if s.count(i) > t.count(i)
      count = count + s.count(i) - t.count(i)
    end
  end
  return count
end


print anagram("leetcode", "practice")
puts
