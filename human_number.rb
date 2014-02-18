# Devise a function that takes an input 'n' (integer) and returns a string that is the
# decimal representation of that number grouped by commas after every 3 digits. You can't
# solve the task using a built-in formatting function that can accomplish the whole
# task on its own.
# 
# Assume: 0 <= n < 1000000000
# 
# 1 -> "1"
# 10 -> "10"
# 100 -> "100"
# 1000 -> "1,000"
# 10000 -> "10,000"
# 100000 -> "100,000"
# 1000000 -> "1,000,000"
# 35235235 -> "35,235,235"


n1 = 1
n2 = 1000
n3 = 100000
n4 = 10000000
n5 = 1000000000
n6 = 1234567

n = n5
n = n.to_s.reverse

str = ""


(1...n.length).each do |i|
  str += n[i].to_s
  if i % 3 != 0 || i == n.length - 1
    next
  else
    str += ','
  end
end

puts str.reverse
