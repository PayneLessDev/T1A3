
def reader(work, book, line)
  quote = File.readlines("text/#{work}/#{book}")[line]
  puts quote
end

def randwork()
 works = ["meditations", "enchiridion", "letters"]
 work = works.sample
end

def randbook()
  dir = Dir.children("text/#{randwork}")
  book = dir.sample
  puts book
end

def randline()
  2
end

def randquote()
  quote = File.readlines("text/#{randwork}/#{randbook}")[randline]
  puts quote
end
