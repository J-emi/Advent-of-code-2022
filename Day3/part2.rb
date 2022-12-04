alphabet_score = {}
("a".."z").zip(1..26).each { |x| alphabet_score[x[0]] = x[1] }
("A".."Z").zip(27..52).each { |x| alphabet_score[x[0]] = x[1] }
sum = 0
File.readlines('Input.txt').each_slice(3) do |three_lines| #every line is an item in array of 3 lines [line1, line2, line3]
    three_lines.map! {|x| x.chomp} # notice map! vs map: three_lines = three_lines.map {...}
    #common = three_lines[0].chars & three_lines[1].chars & three_lines[2].chars
    items_three_lines = three_lines.map {|a| a.chars } # split those lines to arrays of chars
    common = items_three_lines.inject{|a, e| a & e} # for every pair of lines (split to chars) intersect (&) them
    sum += alphabet_score[common[0]]
end

p sum
