require 'pry'

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
    puts "I accept the following commands:"
    puts "- help : displays this help method"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end


def play(songs)
  puts "Please enter a song name or number:"
  song_selection = gets.chomp

  songs.each_with_index do |song, index|
    if song_selection == song || song_selection == "#{index + 1}"
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def list(songs)
  songs.each_with_index do |song, index|
  puts "#{index + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  puts "Please enter a command:"
  user_response = gets.chomp

  if user_response == "list"
    list
  elsif user_response == "play"
    play
  elsif user_response == "help"
    help
  elsif user_response == "exit"
      exit
  end
end
