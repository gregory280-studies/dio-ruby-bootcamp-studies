require 'cpf_cnpj'

def execute
  confirmation = 0
  loop do
    puts "Digite seu CPF"
    cpf = gets.chomp
    if CPF.valid? cpf
      puts "Salvando CPF..."
      confirmation = 1
    else
      puts "CPF inválido. Tente novamente."
    end
    break if confirmation == 1
  end
end

execute