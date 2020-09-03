# An Introduction to Ruby Gems

## Learning Goals
By the end of this lesson you should:
- Be able to add a gem to your computer.
- `require` a gem and use it in your projects
- Have a basic grasp of how to use the [Colorize](https://rubygems.org/gems/colorize) gem.

## Introduction
Gems are what other languages call a library. They are packaged code that can be shared and distributed. Most gems are distributed using [RubyGems.org](https://rubygems.org/). A Gem will contain some files with ruby code, just like the ones you've been creating.

The pages linked above are the rubygems sites for the gems, and you can sometimes find useful documentation here, but more often the updated documentation is on their github pages.

That said we do **NOT** expect all of these gems to be immediately useful.  The learning goal for this lesson is to be able to install, require and use Gems found on RubyGems and Github.  Further it is important to learn to research Gem documentation on Github and use it in your applications.  

## Installing Gems
Installing gems is super easy! We do it right from the Terminal. To install the gem `colorize`, do `$ gem install colorize`. You can see all the gems currently installed using `$ gem list`.

## Requiring Gems
Since gems are external Ruby libraries, they are not included in core Ruby. To use the code provided by the gem, we `require` it in our code base. This can be done at the top of any Ruby script, file, or in `irb`:


## Colorize
Next let's take a quick look at the colorize gem.

- [Colorize](https://rubygems.org/gems/colorize)

Look first at the Gem's page on rubygems.org and then examine the project's [Github repository](https://github.com/fazibear/colorize).

Lets answer a few questions:
1.   What does the gem do?
1.   How do you install the Gem and use it in your application?
1.   How would it be useful?

```bash
gem install colorize
```

Look at the [usage section](https://github.com/fazibear/colorize) of the github page.

```ruby
require "colorize"

puts "This is blue".colorize(:blue)
puts "This is light blue".colorize(:light_blue)
puts "This is also blue".colorize(:color => :blue)
puts "This is light blue with red background".colorize(:color => :light_blue, :background => :red)
puts "This is light blue with red background".colorize(:light_blue ).colorize( :background => :red)
puts "This is blue text on red".blue.on_red
puts "This is red on blue".colorize(:red).on_blue
puts "This is red on blue and underline".colorize(:red).on_blue.underline
puts "This is blue text on red".blue.on_red.blink
puts "This is uncolorized".blue.on_red.uncolorize
```

Neat!  Adding `.colorize` to a string in a `puts` statement styles the output.