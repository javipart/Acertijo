solutions = 0
loop do
    numbers = %w{ 0 1 2 3 4 5 6 7 8 9 }

    s = numbers[rand(numbers.length)]
    numbers.delete(s)
    e = numbers[rand(numbers.length)]
    numbers.delete(e)
    v = numbers[rand(numbers.length)]
    numbers.delete(v)
    n = numbers[rand(numbers.length)]
    numbers.delete(n)

    t = numbers[rand(numbers.length)]
    numbers.delete(t)
    h = numbers[rand(numbers.length)]
    numbers.delete(h)
    r = numbers[rand(numbers.length)]
    numbers.delete(r)

    w = numbers[rand(numbers.length)]
    numbers.delete(w)
    o = numbers[rand(numbers.length)]
    numbers.delete(o)

    l = numbers[rand(numbers.length)]
    numbers.delete(l)
    
    seven = (s.to_i*10000+e.to_i*1000+v.to_i*100+e.to_i*10+n.to_i)
    three = (t.to_i*10000+h.to_i*1000+r.to_i*100+e.to_i*10+e.to_i)
    two = (t.to_i*100+w.to_i*10+o.to_i)
    ope = seven+three+two
    addR = (t.to_i*100000+w.to_i*10000+e.to_i*1000+l.to_i*100+v.to_i*10+e.to_i)
    if ope == addR
        puts "***************"
        puts "seven: #{seven}"
        puts "three: #{three}"
        puts "two: #{two}"
        puts "---------------"
        puts "resultado: #{addR}"
        puts "***************"
        solutions += 1
    end
    break if solutions == 5
end