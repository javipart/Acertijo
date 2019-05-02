
solutions = 0
loop do
    numbers = %w{ 0 1 2 3 4 5 6 7 8 9 }

    o = numbers[rand(numbers.length)]
    numbers.delete(o)
    n = numbers[rand(numbers.length)]
    numbers.delete(n)
    e = numbers[rand(numbers.length)]
    numbers.delete(e)

    f = numbers[rand(numbers.length)]
    numbers.delete(f)
    u = numbers[rand(numbers.length)]
    numbers.delete(u)
    r = numbers[rand(numbers.length)]
    numbers.delete(r)
    
    i = numbers[rand(numbers.length)]
    numbers.delete(i)
    v = numbers[rand(numbers.length)]
    numbers.delete(v)
    
    one = (o.to_i*100+n.to_i*10+e.to_i)
    four = (f.to_i*1000+o.to_i*100+u.to_i*10+r.to_i)
    ope = one+four
    five = (f.to_i*1000+i.to_i*100+v.to_i*10+e.to_i)
    if ope == five
        puts "***************"
        puts "one: #{one}"
        puts "four: #{four}"
        puts "---------------"
        puts "five: #{five}"
        puts "***************"
        solutions += 1
    end
    break if solutions == 5
end