lines = File.readlines("test.txt")
instructions = lines.map(&:split)

def move(dir, dist, state)
    dist = dist.to_i
    case dir
    when 'forward'
        state[:pos] += dist
        state[:depth] += state[:aim] * dist
    when 'down'
        state[:aim] += dist
    when 'up'
        state[:aim] -= dist
    end
end

state = { pos: 0, depth: 0, aim: 0 }
instructions.each { move(_1, _2, state) }

puts "#{state[:pos] * state[:depth]}"