class CLI
  def start
    puts ' hello, what is your name? '
    name = gets.chomp
    if name = 'daniel'
      puts 'hi dan'
    else
      puts "your name is #{name}. goodbye"
    end
  end
end