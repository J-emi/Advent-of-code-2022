fully_contains = 0

File.readlines('Input.txt').each do |line|
  line = line.chomp.split(',').map {|x| x.split("-")}
  line= line.each.map {|x| x.map! {|y| y.to_i}}
  left = line[0]
  right = line[1]
  width_left = left[1] - left[0]
  width_right = right[1] - right[0]

  if width_left == width_right
    if left[1] == right[1]
      fully_contains += 1
    end
  elsif width_left > width_right
    if right[1].between?(left[0], left[1]) and right[0].between?(left[0], left[1])
      fully_contains += 1
    end
  else
    if left[1].between?(right[0], right[1]) and left[0].between?(right[0], right[1])
      fully_contains += 1
    end
  end
end

p fully_contains
