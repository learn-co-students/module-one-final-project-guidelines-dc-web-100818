
  def start #first
    puts "==========  Welcome to the Flatiron Museum of Art! //  =========="
    puts "Enter 'menu' to access the menu."
    puts "Enter 'q' to exit."

    input = gets.chomp
    while input != "menu" && input != "q"
      puts "Please enter 'menu' or 'q'"
      input = gets.chomp
    end

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
    puts "4. Exit"
    puts "Please enter a number:"

    input = gets.chomp
    while ![1, 2, 3, 4].include?(input.to_i)
      puts "Please enter a valid number"
      input = gets.chomp
    end

    case(input)
      when '1'
        artist_prompts
      when '2'
        artwork_prompts
      when '3'
        gallery_prompts
      when '4'
        exit_method
    end
  end

def continue
  puts "Would you like to look for something else? Enter 'yes' or 'no'"
  input = gets.chomp
  while input != "yes" && input != "no"
    puts "Please enter 'yes' or 'no'"
    input = gets.chomp
  end
    case(input)
      when "yes"
          menu
      when "no"
          exit_method
    end
end

def select_four(input)
  while ![1, 2, 3, 4].include?(input.to_i)
    puts "Please enter a valid number"
    input = gets.chomp
  end
end


def artist_prompts
  puts "What artist are you looking for? Please enter a number."
  puts Artist.list_artists
  input = (gets.chomp).to_i

  while  input > Artist.list_artists.length || input == 0
    puts "Please select a valid number"
    input = (gets.chomp).to_i
  end
  object = Artist.all[input-1]
  object.info
  continue
end

def artwork_prompts
 puts "Would you like to search for a art pieces by type, or culture? Please enter a number."
 puts "1. List all Art Pieces"
 puts "2. Type"
 puts "3. Culture"
 puts "4. Exit"

 input = gets.chomp

 select_four(input)

  case(input)
    when '1'
      art_piece_list
    when '2'
      artwork_type
    when '3'
      artwork_culture
    when '4'
      exit_method
  end
end

def art_piece_list
  puts ArtPiece.list_all
  continue
end

def artwork_type
  puts "Please enter one of the following:"
  arr = ArtPiece.all.collect {|e| e.classification}.uniq
  arr.each {|el| puts "* #{el}"}
  input = gets.chomp
end

def gallery_prompts
end
