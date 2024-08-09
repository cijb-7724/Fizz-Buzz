n, k = read_line.split.map(&.to_i64)
a = read_line.split.map(&.to_i64)
a.each_with_index do |x, i|
  if x % k == 0
    puts (x / k).to_i
  end
end
