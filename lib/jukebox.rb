songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
	puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(song_list)
	song_list.each_with_index { |song, index| puts "#{index + 1}. #{song}" }
end

def play(song_list)
	puts "Please enter a song name or number:"
	song_name = gets.chomp
	if 1 <= song_name.to_i && song_name.to_i <= song_list.length
		puts "Playing #{song_list[song_name.to_i - 1]}"
	elsif song_list.include?(song_name)
		puts "Playing #{song_name}"
	else
		puts "Invalid input, please try again"
	end
end

def exit_jukebox
	puts "Goodbye"
end

def run(songs)
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
			list(songs)
			puts "Please enter a command:"
			input = gets.chomp
		when "play"
			play(songs)
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