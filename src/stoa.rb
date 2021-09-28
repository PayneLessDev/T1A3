require 'tty-box'
#require_relative /lib/ui.rb
#require_relative /lib/commands.rb

# def main

#   if ARGV.include?("v")
#     puts "visual mode"
#   end

#   for arg in ARGV
#   end

#   opt = Hash[*ARGV]

#   print opt

# end

def reader(work, book, line)

  case work
    when 1 || "med" || "meditations"
      work = "meditations"
  end

  quote = File.readlines("text/#{work}/#{book}")[line]

  #print TTY::Box.frame "#{quote}"
  box = TTY::Box.frame(width: 30, height: 10, title: {top_left: "Meditations", bottom_right: "Book 01"}) do
    "#{quote}"
  end

  print box
end


puts "work?"
work = gets.chomp.to_i
puts "book?"
book = gets.chomp.to_i
puts "line?"
line = gets.chomp.to_i

reader(work, book, line)
