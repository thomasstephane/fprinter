require_relative 'screen.rb'
module FPrinter
  def self.bold(str)
    print "\e[1m" + str + "\e[0m\n"
  end
  
  def self.blink(str, sec = 1)
    print "\e[5m" + str + "\e[0m\n"
  end
  
  def self.underline(str)
    print "\e[4m" + str + "\e[0m\n"
  end
  
  def self.highlight(str)
    print "\e[7m" + str + "\e[0m\n"
  end
  
  def self.black(str)
    print "\e[30m" + str + "\e[0m\n"
  end
  
  def self.red(str)
    print "\e[31m" + str + "\e[0m\n"
  end
  
  def self.green(str)
    print "\e[32m" + str + "\e[0m\n"
  end
  
  def self.yellow(str)
    print "\e[33m" + str + "\e[0m\n"
  end
  
  def self.blue(str)
    print "\e[34m" + str + "\e[0m\n"
  end
  
  def self.magenta(str)
    print "\e[35m" + str + "\e[0m\n"
  end
  
  def self.cyan(str)
    print "\e[36m" + str + "\e[0m\n"
  end
  
  def self.white(str)
    print "\e[37m" + str + "\e[0m\n"
  end
  
  def self.highlighted_black(str)
    print "\e[40m" + str + "\e[0m\n"
  end
  
  def self.highlighted_red(str)
    print "\e[41m" + str + "\e[0m\n"
  end
  
  def self.highlighted_green(str)
    print "\e[42m" + str + "\e[0m\n"
  end
  
  def self.highlighted_yellow(str)
    print "\e[43m" + str + "\e[0m\n"
  end
  
  def self.highlighted_blue(str)
    print "\e[44m" + str + "\e[0m\n"
  end
  
  def self.highlighted_magenta(str)
    print "\e[45m" + str + "\e[0m\n"
  end
  
  def self.highlighted_cyan(str)
    print "\e[46m" + str + "\e[0m\n"
  end
  
  def self.highlighted_white(str)
    print "\e[47m" + str + "\e[0m\n"
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










