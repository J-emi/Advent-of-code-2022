SHAPE_POINTS = {"X" => 1, "Y" => 2, "Z" => 3}
SHAPE_DRAW = {"X" => "A", "Y" => "B", "Z" => "C"}
SHAPE_WINS = {"X" => "C", "Y" => "A", "Z" => "B"}
score = 0

File.readlines('Input.txt').each do |line|
   line = line.chomp
    split_line = line.split(" ")
    move = split_line[1]
    score += SHAPE_POINTS[move]

    if SHAPE_WINS[move] == split_line[0]
        score += 6
    elsif SHAPE_DRAW[move] == split_line[0]
        score += 3
    end
end

puts score
