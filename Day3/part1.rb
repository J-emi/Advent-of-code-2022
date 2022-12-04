alphabet_score = {}
("a".."z").zip(1..26).each { |x| alphabet_score[x[0]] = x[1] }
("A".."Z").zip(27..52).each { |x| alphabet_score[x[0]] = x[1] }
sum = 0
File.readlines('Input.txt').each do |line|
    line = line.chomp
    half_size = line.size / 2
    rucksack = line.scan(/.{#{half_size}}/)
    common = rucksack[0].chars & rucksack[1].chars
    sum += alphabet_score[common[0]]
end

p sum
