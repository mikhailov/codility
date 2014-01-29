def solution(a)
  b = []
  prfx = a.length - 1

  0.upto(a.length-1).each do |i|
    b[i] = 0
    a.each do |j|
      if j == i
        b[i] += 1
      end
    end
  end

  (a.length-1).downto(0).each do |i|
    prfx = i

    if b[a[i]] > 1
      b[a[i]] -= 1
    elsif b[a[i]] == 1
      break
    end
  end

  puts prfx
end


a = [0,4,3,4,5,1,0,1,1]
solution(a)
