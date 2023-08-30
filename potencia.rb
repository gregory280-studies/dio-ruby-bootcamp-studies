def execute
  numbers = []
  puts "Insira os números desejados"
  3.times do |i|
    puts "#{i+1}º número"
    numbers << gets.chomp.to_i
  end
  numbers.map! { |n| n**3 }
  puts "O resultado elevados na 3ª potência é"
  print numbers
end

execute