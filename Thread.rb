def fibo(n)
  n < 2 ? n : fibo(n-1) + fibo(n-2)
end

inicio = Time.now

1.upto(5).map do |n|
  Thread.new { puts "Hilo #{n}: #{fibo(10)}" }
end.each(&:join)

puts "Tiempo: #{Time.now - inicio}"
