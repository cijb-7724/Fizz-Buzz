#Crystal (Crystal 1.9.1)
n = (1).to_i
while n <= 100
    if n % 15 == 0
        puts "FizzBuzz"
    elsif n % 3 == 0
        puts "Fizz"
    elsif n % 5 == 0
        puts "Buzz"
    else
        puts n
    end
    n += 1
end