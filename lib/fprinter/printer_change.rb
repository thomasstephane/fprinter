require_relative 'screen.rb'
module FPrinter

  def self.slow(str, sec = 0.05)
    str.split("").each do |l| 
      print l
      sleep(sec)
    end
    puts ""
  end

  def self.slow_unprint(str, sec = 0.05)
    s = str.length
    str.split("").each_with_index do |l, i| 
      print "\e[K", str[0..(s-i)]
      sleep(sec)
      print "\e[D" * (s - i + 2)
    end
    print "\e[D" *  2, "\e[K", "\n"
  end

  def self.appear_from_left(str, sec = 0.05)
    s = str.length
    str.split("").each_with_index do |l, i| 
      print "\e[K", str[(s-1-i)..(s-1)], "\e[D" * (i + 1)
      sleep(sec)
      print  "\e[D" * (s - i)
    end
    print "\e[D" *  2, "\n"
  end

  def self.appear_from_right(str, sec = 0.05)
    s = str.length
    str.split("").each_with_index do |l, i| 
      print "\e[K", " " * (s - i - 1), str[0..(i)]
      sleep(sec)
      print  "\e[D" * (s + i)
    end
    print "\e[D" *  2, "\n"
  end

  def self.reverse(str, sec = 0.05)
    s = str.length
    str.split("").each_with_index do |l, i| 
      print "\e[K", " " * (s - i - 1), str[(s-1-i)..(s-1)], "\e[D" * (i + 1)
      sleep(sec)
      print  "\e[D" * (s - i)
    end
    print "\e[D" *  2, "\n"
  end
end