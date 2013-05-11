module Printer
   
  def self.clean!
    print "\e[2J"
  end
   
  def self.move_to_home!
    print "\e[H"
  end
   
  def self.flush!
    $stdout.flush
  end
end