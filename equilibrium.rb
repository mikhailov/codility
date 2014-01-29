def solution(a)
  left, right = 0, a.inject{|sum, k| sum += k}
 
  (0...a.length).each do |j|
    # deduct right part
    right = right - a[j]
    # skip first iterate for left
    left = left + a[j-1] if j > 0

    return j if left == right
  end

  -1
end

puts solution([-7, 1, 5, 2, -4, 4, -1])