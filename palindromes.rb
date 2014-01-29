def solution(s)
  len = s.length
  if len > 100000000
    return -1
  end


  (0..len).each do |i|
    (2..len - i).each do |j|
      next if s[i,j] != s[i,j].reverse
      puts "(#{i},#{i + s[i,j].length - 1})"
    end
  end
end


a = "abbabba"
solution(a)