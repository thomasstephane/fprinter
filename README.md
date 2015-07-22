FPrinter
=======

To use simply call FPrinter with the required style, for instance:

```ruby
FPrinter.blue("Some blue text")
```

This will print in blue, without affecting other printouts.


Alternatively, call the `!` methods to change all outputs until `reset!` is called, like below

```ruby
print "Some regular text"
FPrinter.blue!
print "Some blue text"
print "Some more blue text"
FPrinter.yellow!
print "Some yellow text"
FPrinter.reset!
print "some regular text again"
```

**You can use the following commands:**  

 * `bold(string)` or `bold!` : prints string in bold
 * `blink(string)` or `blink!` : prints flashing string
 * `underline(string)` or `underline!` : prints underlined string
 * `highlight(string)` or `highlight!` : prints your string highlighted
 * `black(string)` or `black!` : prints your text in black - works for red, green, yellow, blue, magenta, cyan and white
 * `highlighted_red(string)` or `highlighted_red!` : prints your text highlighted in red - works with green, yellow, blue, magenta, cyan, white
 * `slow(string, time = 0.08)` : prints string slowly - optionnal, set the time in seconds, default is 0.05
 * `slow_unprint(string, time = 0.05)` : print string on screen, and slowly erase it from the right - optionnal, set the time in seconds, default is 0.05
 * `reverse(string, time = 0.05)` : print string starting from the end - optionnal, set the time in seconds, default is 0.05
 * `appear_from_left(string, time = 0.05)` : string appears from the left - optionnal, set the time in seconds, default is 0.05
 * `appear_from_right(string, time = 0.05)` : string appears from the left - optionnal, set the time in seconds, default is 0.05
 * `big(string)` : prints big letters - supported characters in v 0.1.0 a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,!,?,#,@

----------

#### Feel free to share! ####

[https://rubygems.org/gems/fprinter][1]

#### Contact the author: ####

[@thomasstephn][2]

  [1]: https://rubygems.org/gems/fprinter
  [2]: https://twitter.com/thomasstephn
