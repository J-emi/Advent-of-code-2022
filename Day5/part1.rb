# [V] [G]             [H]
# [Z] [H] [Z]         [T] [S]
# [P] [D] [F]         [B] [V] [Q]
# [B] [M] [V] [N]     [F] [D] [N]
# [Q] [Q] [D] [F]     [Z] [Z] [P] [M]
# [M] [Z] [R] [D] [Q] [V] [T] [F] [R]
# [D] [L] [H] [G] [F] [Q] [M] [G] [W]
# [N] [C] [Q] [H] [N] [D] [Q] [M] [B]
#  1   2   3   4   5   6   7   8   9

stacks = [
  ["N", "D", "M", "Q", "B", "P", "Z", "V"],
  ["C", "L", "Z", "Q", "M", "D", "H", "G"],
  ["Q", "H", "R", "D", "V", "F", "Z"],
  ["H", "G", "D", "F", "N"],
  ["N", "F", "Q"],
  ["D", "Q", "V", "Z", "F", "B", "T", "H"],
  ["Q", "M", "T", "Z", "D", "V", "S"],
  ["M", "G", "F", "P", "N", "Q"],
  ["B", "W", "R", "M"]]



def move_blocks(stack, instruction)
  instruction = instruction.match(/move (?<count>\d+) from (?<from>\d+) to (?<to>\d+)/)
  count = instruction[:count].to_i
  to = instruction[:to].to_i - 1
  from = instruction[:from].to_i - 1
  #p "count: #{count}, to: #{stack[to]}, from: #{stack[from]}"
  count.times { stack[to].append(stack[from].pop) }
end

File.readlines('instructions.txt').each do |line|
  line = line.chomp
  move_blocks(stacks, line)
end

last = stacks.map { |x| x.pop}
p last.join("")

