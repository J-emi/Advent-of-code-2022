overlap = 0

File.readlines('Input.txt').each do |line|
  line = line.chomp.split(',').map {|x| x.split("-")}
  line= line.each.map {|x| x.map! {|y| y.to_i}}
  left = line[0]
  right = line[1]

  if left[0].between?(right[0], right[1]) or left[1].between?(right[0], right[1])
    overlap += 1
  elsif right[0].between?(left[0], left[1]) or right[1].between?(left[0], left[1])
    overlap += 1
  end
end

p overlap
