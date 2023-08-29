def execute
  puts "Olá"
  validation = 0
  loop do
    puts "Insira seu NOME"
    name = gets.chomp
    
    puts "Insira seu SOBRENOME"
    last_name = gets.chomp

    puts "Insira sua IDADE"
    age = gets.chomp.to_i

    if (/\d|\W/.match(name+last_name) == nil) && (age > 0) && (!name.empty?) && (!last_name.empty?)
      puts "Salvando dados..."
      puts "Cadastro realizado\nNOME: #{name}\nSOBRENOME: #{last_name}\nIDADE: #{age}"
      validation = 1
    else
      puts "Preenchimento Incorreto. Por favor, tente novamente."
    end
    break if validation == 1
  end
end

execute()