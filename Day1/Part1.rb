elves = [[]]
max = 0
i = 0

File.readlines('Input.txt').each do |line|
    unless line == "\n"
        elves[i].append(line.to_i)
    else 
        elves.append([])
        i += 1
    end
end

sums= elves.map {|elf| elf.sum}
top = sums.sort.reverse!
puts top[..2].sum


