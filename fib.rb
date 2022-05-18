def fibs(num)
  arr = []
  num.times do |idx|
    arr.push(
    if (idx == 0)
      0
    elsif idx == 1
      1
    else
      (idx-1) + (idx-2)
    end
  )
  end
  arr
end

def fibs_rec(num, arr = [0])
  arr.push(
  if num == 0
     0
  elsif num == 1
     1
  else
    fibs_rec(num - 1, arr)
    num - 1 + num - 2
  end
)
  arr
end

p fibs_rec(8)
