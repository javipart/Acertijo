solutions = 0
loop do
    blocks = %w{ 105 90 45 30 15 }
    randomAdd1 = 0
    randomAdd2 = 0
    r1 = []
    r2 = []
    while blocks.length > 0 do
        num = blocks[rand(blocks.length)]
        blocks.delete(num)
        r1.push(num)
        randomAdd1 += num.to_i
        num = blocks[rand(blocks.length)]
        blocks.delete(num)
        r2.push(num)
        randomAdd2 += num.to_i
        if r1.length > 2
            if randomAdd1 - randomAdd2 == 15
                puts "Bloques LD #{r1}"
                puts "Bloques LI #{r2}"
                solutions += 1
            end
        end
    end
    break if solutions == 6
end