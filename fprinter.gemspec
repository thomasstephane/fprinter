Gem::Specification.new do |s|
  s.name        = 'fprinter'
  s.version     = '0.2.0'
  s.date        = '2015-07-22'
  s.summary     = "Fancy Printer - also known as F*^$:#` Printer"
  s.description = "A simple printer gem, to print your stuff a fancy way"
  s.authors     = ["Stephane Thomas"]
  s.email       = 'thomas.stephn@gmail.com'
  s.files       = ['lib/fprinter.rb','lib/fprinter/screen.rb','lib/fprinter/display_change.rb','lib/fprinter/printer_change.rb']
  s.homepage    = 'https://github.com/thomasstephane/fprinter'
  s.post_install_message =<<welcome
********************************************************************************

  Follow @thomasstephn on Twitter for updates, and news.
  https://twitter.com/thomasstephn

  Thanks for using fprinter !

********************************************************************************
welcome
end
