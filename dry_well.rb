def solution(rings, discs)
  (0..rings.length-2).each do |i|
    rings[i+1] > rings[i] && rings[i+1] = rings[i]
  end

  num = 0

  (rings.length-1).downto(0).each do |i|
    if discs.length == 0 || num >= discs.length
      break
    end

    if discs[num] <= rings[i]
      num += 1
    end
  end

  return num
end


rings = [5, 6, 4, 3, 6, 2, 3]
discs = [1, 3, 5, 2, 4]
puts solution(rings, discs)