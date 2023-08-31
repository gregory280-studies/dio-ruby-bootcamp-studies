PHONE_FORMAT = /^\([1-9]{2}\) [9]{0,1}[6-9]{1}[0-9]{3}\-[0-9]{4}$/
def execute
  confirmation = 0
  loop do 
    puts "Digite seu WhatsApp"
    phone = gets.chomp
    if phone.match(PHONE_FORMAT)
      puts "Seu WhatsApp é #{phone}"
      confirmation = 1
    else
      puts "Formato inválido. Tente novamente."
    end
    break if confirmation == 1
  end  
end

execute