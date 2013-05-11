Gem::Specification.new do |s|
  s.name        = 'printer'
  s.version     = '0.1.0'
  s.date        = '2013-05-11'
  s.summary     = "Printer magic tools"
  s.description = "A simple printer gem"
  s.authors     = ["Stephan Thomas"]
  s.email       = 'thomas.stephn@gmail.com'
  s.files       = ['lib/printer.rb','lib/printer/screen.rb','lib/printer/display_change.rb','lib/printer/printer_change.rb']
  s.homepage    = 'https://github.com/thomasstephane/printer' 
  s.post_install_message =<<welcome
********************************************************************************

  Follow @thomasstephn on Twitter for updates, and news.
  https://twitter.com/thomasstephn

  Thanks for using printer !

********************************************************************************
welcome
end