SHAPE_POINTS = {"R" => 1, "P" => 2, "S" => 3}

SHAPE_DRAW = {"A" => "R", "B" => "P", "C" => "S"}
SHAPE_OP_WINS = {"A" => "S", "B" => "R", "C" => "P"}
SHAPE_OP_LOSE = {"A" => "P", "B" => "S", "C" => "R"}

RESULT_POINTS = {"X" => 0, "Y" => 3, "Z" => 6}
score = 0

File.readlines('Input.txt').each do |line|
   line = line.chomp
    split_line = line.split(" ")
    result = split_line[1]
    opponent = split_line[0]
    score += RESULT_POINTS[result]

    if result == "X"
        move = SHAPE_OP_WINS[opponent]
    elsif result == "Y"
        move = SHAPE_DRAW[opponent]
    else
        move = SHAPE_OP_LOSE[opponent]
    end

   score += SHAPE_POINTS[move]
end

puts score
