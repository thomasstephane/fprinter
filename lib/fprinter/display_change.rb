require_relative 'screen.rb'
module FPrinter

  CONSOLE_MATCHES = {
    bold: "\e[1m",
    blink: "\e[5m",
    underline: "\e[4m" ,
    highlight: "\e[7m" ,
    black: "\e[30m",
    red: "\e[31m",
    green: "\e[32m",
    yellow: "\e[33m",
    blue: "\e[34m",
    magenta: "\e[35m",
    cyan: "\e[36m",
    white: "\e[37m",
    highlighted_black: "\e[40m",
    highlighted_red: "\e[41m",
    highlighted_green: "\e[42m",
    highlighted_yellow: "\e[43m",
    highlighted_blue: "\e[44m",
    highlighted_magenta: "\e[45m",
    highlighted_cyan: "\e[46m",
    highlighted_white: "\e[47m"
  }

  CONSOLE_MATCHES.each do |matcher, color_code|
    define_singleton_method(matcher) do |str|
      print color_code + str + "\e[0m\n"
    end
  end

  CONSOLE_MATCHES.each do |matcher, color_code|
    define_singleton_method("#{matcher}!") do
      print color_code
    end
  end

  def self.big(str)
    transform = str.split("")
    line0, line1, line2, line3, line4, line5 = [], [], [], [], [], []
    transform.each do |letter|
      letter.downcase!
      raise "Unknown character #{letter}" if !BIG_LETTERS.has_key?(letter)
      line0 << LINE0[BIG_LETTERS[letter]..(BIG_LETTERS[letter.next] - 1)]
      line1 << LINE1[BIG_LETTERS[letter]..(BIG_LETTERS[letter.next] - 1)]
      line2 << LINE2[BIG_LETTERS[letter]..(BIG_LETTERS[letter.next] - 1)]
      line3 << LINE3[BIG_LETTERS[letter]..(BIG_LETTERS[letter.next] - 1)]
      line4 << LINE4[BIG_LETTERS[letter]..(BIG_LETTERS[letter.next] - 1)]
      line5 << LINE5[BIG_LETTERS[letter]..(BIG_LETTERS[letter.next] - 1)]
    end
    puts line0.join("")
    puts line1.join("")
    puts line2.join("")
    puts line3.join("")
    puts line4.join("")
    puts line5.join("")
  end

end




LINE0 = "           ____    _____  _____   ______  ______   _____  _    _  _____       _  _  __ _       __  __  _   _   ____  _____     ____   _____    _____  _______  _    _ __      ____          ____   ____     __ ______   _  _ _    _  _    ___     ____  "
LINE1 = "    /\\    |  _ \\  / ____||  __ \\ |  ____||  ____| / ____|| |  | ||_   _|     | || |/ /| |     |  \\/  || \\ | | / __ \\ |  __ \\  / __ \\ |  __ \\  / ____||__   __|| |  | |\\ \\    / /\\ \\        / /\\ \\ / /\\ \\   / /|___  /  | || | | _| || |_ |__ \\   / __ \\ "
LINE2 = "   /  \\   | |_) || |     | |  | || |__   | |__   | |  __ | |__| |  | |       | || ' / | |     | \\  / ||  \\| || |  | || |__) || |  | || |__) || (___     | |   | |  | | \\ \\  / /  \\ \\  /\\  / /  \\ V /  \\ \\_/ /    / /   | ||/|/ |_  __  _|   ) | / / _` |"
LINE3 = "  / /\\ \\  |  _ < | |     | |  | ||  __|  |  __|  | | |_ ||  __  |  | |   _   | ||  <  | |     | |\\/| || . ` || |  | ||  ___/ | |  | ||  _  /  \\___ \\    | |   | |  | |  \\ \\/ /    \\ \\/  \\/ /    > <    \\   /    / /    |_|      _| || |_   / / | | (_| |"
LINE4 = " / ____ \\ | |_) || |____ | |__| || |____ | |     | |__| || |  | | _| |_ | |__| || . \\ | |____ | |  | || |\\  || |__| || |     | |__| || | \\ \\  ____) |   | |   | |__| |   \\  /      \\  /\\  /    / . \\    | |    / /__    _      |_  __  _| |_|   \\ \\__,_|"
LINE5 = "/_/    \\_\\|____/  \\_____||_____/ |______||_|      \\_____||_|  |_||_____| \\____/ |_|\\_\\|______||_|  |_||_| \\_| \\____/ |_|      \\___\\_\\|_|  \\_\\|_____/    |_|    \\____/     \\/        \\/  \\/    /_/ \\_\\   |_|   /_____|  |_|       |_||_|   (_)    \\____/ "


BIG_LETTERS = { "a" => 0,
              "b" => 10,
              "c" => 17,
              "d" => 25,
              "e" => 33,
              "f" => 41,
              "g" => 49,
              "h" => 57,
              "i" => 65,
              "j" => 72,
              "k" => 80,
              "l" => 86,
              "m" => 94,
              "n" => 102,
              "o" => 109,
              "p" => 117,
              "q" => 125,
              "r" => 133,
              "s" => 141,
              "t" => 149,
              "u" => 158,
              "v" => 166,
              "w" => 176,
              "x" => 190,
              "y" => 197,
              "z" => 206,
              "aa" => 213,
              " " => 213,
              "!" => 215,
              "\"" => 218,
              "#" => 223,
              "$" => 233,
              "?" => 233,
              "@" => 241,
              "A" => 251
}
