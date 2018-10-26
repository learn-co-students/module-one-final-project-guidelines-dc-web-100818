def start
  puts "===============  Welcome to the Flatiron Museum of Art!  ==============="
  puts "Enter 'menu' to access the menu."
  puts "Enter 'q' to exit."
  input = gets.chomp
    while input.downcase != "menu" && input.downcase != "q"
      puts "Please enter 'menu' or 'q':"
      input = gets.chomp
    end
    case(input.downcase)
      when 'menu'
        menu
      when 'q'
        exit_method
      else
        puts "Please enter 'menu' to continue or 'q' to exit:"
   end
end


def exit_method
  puts "========================================================================"
  puts "Thanks for stopping by, see you next time!"
  puts "========================================================================"
  exit
end


def menu
  puts "What are you looking for?"
  puts "1. Artist"
  puts "2. Artwork"
  puts "3. Gallery information"
  puts "4. Exit"
  puts "Please enter a number:"
  input = gets.chomp
  while ![1, 2, 3, 4].include?(input.to_i)
    puts "Please enter a valid number:"
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
  puts "========================================================================"
  puts "Would you like to look for something else? Enter 'yes' or 'no':"
  input = gets.chomp
  while input != "yes" && input != "no"
    puts "Please enter 'yes' or 'no':"
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
    puts "Please enter a valid number:"
    input = gets.chomp
  end
end


def artist_prompts
  puts "What artist are you looking for?"
  puts "========================================================================"
  puts Artist.list_artists
  puts "========================================================================"
  puts "Please enter a number:"
  input = (gets.chomp).to_i

  while  input > Artist.list_artists.length || input == 0
    puts "Please select a valid number:"
    input = (gets.chomp).to_i
  end
  object = Artist.all[input-1]
  object.info
  continue
end


def artwork_prompts
 puts "How would you like to search artwork?"
 puts "1. List all Art Pieces"
 puts "2. Search by type"
 puts "3. Search by culture"
 puts "4. Exit"
 puts "Please enter a number: "
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
  puts "========================================================================"
  puts ArtPiece.list_all
  continue
end


def artwork_type
 puts "Please enter one of the following:"
 arr = ArtPiece.all.collect {|e| e.classification}.uniq
 arr.each {|el| puts "* #{el}"}
 input = gets.chomp
 puts "========================================================================"
 puts ArtPiece.search_by_classification(input)
 continue
end


def artwork_culture
  puts "Please enter one of the following:"
  arr = Artist.all.collect {|el| el.culture}.uniq.sort
  arr.each {|el| puts "* #{el}"}
  input = gets.chomp
  puts "========================================================================"
  puts ArtPiece.search_by_culture(input)
  continue
end

def select_gallery_floor(input)
  while ![1, 2, 3].include?(input.to_i)
    puts "Please enter a valid number:"
    input = gets.chomp
  end
end

def gallery_prompts
  puts "To select a floor, enter 1, 2, or 3."
  input1 = gets.chomp
  select_gallery_floor(input1.to_i)
  puts "Select a type of information for this floor:"
  puts "1. Rooms"
  puts "2. Artwork"
  puts "3. Artists"
  puts "4. Exit"
  puts "Please enter a number:"
  input2 = gets.chomp
  select_four(input2)
  case(input2)
    when '1'
      puts Gallery.search_galleries_by_floor(input1.to_i)
      continue
    when '2'
      puts Gallery.search_artwork_by_floor(input1.to_i)
      continue
    when '3'
      puts Gallery.search_artists_by_floor(input1.to_i)
      continue
    when '4'
      exit_method
  end
end
