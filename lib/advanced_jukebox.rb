my_songs = {
  "Go Go GO" => "/Users/willulman/Development/code/jukebox-cli-atlanta-web-career-012819/audio/Emerald-Park/01.mp3",
  "LiberTeens" => "/Users/willulman/Development/code/jukebox-cli-atlanta-web-career-012819/audio/Emerald-Park/02.mp3",
  "Hamburg" =>  "/Users/willulman/Development/code/jukebox-cli-atlanta-web-career-012819/audio/Emerald-Park/03.mp3",
  "Guiding Light" => "/Users/willulman/Development/code/jukebox-cli-atlanta-web-career-012819/audio/Emerald-Park/04.mp3",
  "Wolf" => "/Users/willulman/Development/code/jukebox-cli-atlanta-web-career-012819/audio/Emerald-Park/05.mp3",
  "Blue" => "/Users/willulman/Development/code/jukebox-cli-atlanta-web-career-012819/audio/Emerald-Park/06.mp3",
  "Graduation Failed" => "/Users/willulman/Development/code/jukebox-cli-atlanta-web-career-012819/audio/Emerald-Park/07.mp3"
}

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end



def list(my_songs)
  my_songs.keys.each_with_index { |song, index| puts "#{index + 1}. #{song}"}
end


def play(my_songs)
  puts "Please enter a song name:"
  song_name = gets.chomp
  if my_songs.keys.include?(song_name)
    filename = my_songs[song_name]
    system "open #{filename}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  while input != "exit"
    case input
    when "help"
      help
      puts "Please enter a command:"
      input = gets.chomp
    when "list"
      list(my_songs)
      puts "Please enter a command:"
      input = gets.chomp
    when "play"
      play(my_songs)
      puts "Please enter a command:"
      input = gets.chomp
    else
      puts "Invalid input, please try again"
      puts "Please enter a command:"
      input = gets.chomp
    end
  end
  if input == "exit"
    exit_jukebox
  end
end
