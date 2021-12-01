lines = File.read("input.txt").split.map { |line| line.to_i }

# part one
puts lines.select.with_index { |line, i| i > 0 && line > lines[i - 1] }.count

# part two
puts lines.each_cons(3).each_cons(2).select { _1.sum < _2.sum}.count