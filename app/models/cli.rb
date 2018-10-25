
class CLI

  def start
    puts "==========  Welcome to the Flatiron Museum of Art! //  =========="
    puts "Enter 'menu' to access the menu."
    puts "Enter 'q' to exit."
    input = gets.chomp
    case(input)
    when 'menu'
      menu
    when 'q'
      puts "See you next time!"
      exit
    end
  end

  def menu
    puts " "

  end

end
