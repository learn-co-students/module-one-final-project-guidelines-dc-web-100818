
  def start #first
    puts "==========  Welcome to the Flatiron Museum of Art! //  =========="
    puts "Enter 'menu' to access the menu."
    puts "Enter 'q' to exit."

    input = gets.chomp

    case(input)
      when 'menu'
        menu
      when 'q'
        exit_method
      else
        puts "Please enter 'menu' to continue or 'q' to exit"
    end
  end

  def exit_method
    puts "See you next time!"
    exit
  end

  def menu
    puts "What are you looking for?"
    puts "1. Find Artist"
    puts "2. Find Artwork"
    puts "3. Gallery information"
    puts "4. exit"
    puts "Please enter a number:"

    input = gets.chomp

    case(input)
      when '1'
        artist_prompts
      when '2'
        artwork_prompts
      when '3'
        gallery_prompts
      when '4'
        exit_method
    else
      puts "Please enter a valid number"
    end
  end

def artist_prompts
  puts "What artist are you looking for?"
  Artist.list_artists
  input = (gets.chomp).to_i

  if input > Artist.list_artists.length || input == 0
    puts "Please select a valid number"
  else

  end
end

# Artist.all[input.to_i-1]
#
# def artwork_prompts
#
# end
#
# def gallery_prompts
# end
