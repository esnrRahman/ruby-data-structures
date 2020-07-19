def divide(n1, n2)
  is_negative = n1 < 0

  tmp = n1.abs()
  i = 0

  while(tmp > 0)
    i += 1
    tmp = tmp - n2
  end

  remainder = nil

  if tmp == 0
    remainder = 0
  else
    remainder = n2 - tmp.abs()
    i -= 1
  end

  i = -i if is_negative

  puts "i = #{i}, remainder = #{remainder}"
end

