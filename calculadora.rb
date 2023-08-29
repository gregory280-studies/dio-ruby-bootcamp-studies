def menu
  puts "🧮 Calculadora em Ruby 🧮"
  loop do
    puts "[1] Soma\n[2] Subtração\n[3] Multiplicação\n"+
    "[4] Divisão\n[0] Sair\n➜ Escolha uma opção"
    option = gets.chomp.to_i
    case option
    when 1
      num1, num2 = get_inputs
      sum(num1,num2)
    when 2
      num1, num2 = get_inputs
      sub(num1, num2)
    when 3
      num1, num2 = get_inputs
      mult(num1, num2)
    when 4
      num1, num2 = get_inputs
      div(num1, num2)
    when 0
      puts 'Encerrando...'
      break
    else
      puts 'Opção inválida. Tente novamente.'
    end
  end

end

def get_inputs
  loop do
    puts "Digite o primeiro número:"
    num1 = gets.chomp.to_i
    puts "Digite o segundo número:"
    num2 = gets.chomp.to_i
    break num1,num2 if num1 != 0 && num2 != 0
  end
end

def sum(num1, num2)
  res = num1 + num2
  puts "Soma de #{num1} e #{num2} é ➜ #{res}."
end


def sub(num1, num2)
  res = num1 - num2
  puts "Subtração de #{num1} e #{num2} é ➜ #{res}"
end

def mult(num1, num2)
  res = num1 * num2
  puts "Multiplicação de #{num1} e #{num2} é ➜ #{res}"
end

def div(num1, num2)
  res = num1 / num2
  puts "Divisão de #{num1} e #{num2} é ➜ #{res}"
end

menu
