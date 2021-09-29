prompt = TTY::Prompt.new
active = true

def header()
  title = TTY::Font.new(:standard)
  box = TTY::Box.frame(width: TTY::Screen.width, height: 8) do
    title.write("THE   STOA", letter_spacing: 5)
  end
  print box
end

def body()
  box = TTY::Box.frame(width: TTY::Screen.width, height: 30) do
   "Niggrst"
  end
  print box
end

