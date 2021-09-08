#!/usr/bin/env ruby

# RUBY CLASS
class MegaGreeter

  # CLASS PROPERTY
  attr_accessor :names

  # CLASS METHODS 
  # create the object
  def initialize(names = "World")
    @names = names
  end

  # say hi to everybody 
  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?('each')
      # if @names is a list of somekind, loop over it 
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else 
      puts "Hello #{@names}"
    end
  end

  # say bye to everybody
  def say_bye 
    if @names.nil?
      puts "..."
    elsif @names.respond_to?('each')
      # Join the list elements 
      puts "Goodbye #{@names.join(", ")}. Come back soon!"
    else
      puts "Goodbye #{@names}. Come back soon!"
    end
  end
end

if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  mg.names = 'Zeke'
  mg.say_hi
  mg.say_bye

  mg.names = ['Albert', 'Brenda', 'Charles', 'Dave', 'Englebert']
  mg.say_hi
  mg.say_bye

  mg.names = nil
  mg.say_hi
  mg.say_bye 
  
end  