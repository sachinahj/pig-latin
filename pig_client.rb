require 'pig_latin'

class PigLatin::Client
  def initialize
  end
  def self.start
    puts "Hello, I speak igpay atinlay!"
    puts "Type any english word to translate to Pig Latin:"
    puts "Type q to quit"
    client
  end

  private
  def self.client
    print ">"
    input = gets.chomp
    action(input)
  end
  def self.action(input)
    if input.downcase == "q"
      puts "Good-bye"
      return
    else 
      puts PigLatin::Code.convert(input)
      client
    end
  end
end

PigLatin::Client.start
# PigLatin::Client.new.start