# SixLittle.rb - Standalone Ruby Program
=> nil
irb(main):002>
irb(main):003> # Define the SixLittle class
=> nil
irb(main):004* class SixLittle
irb(main):005*   attr_accessor :words, :hints, :tokens
irb(main):006*
irb(main):007*   def initialize
irb(main):008*     @words = []
irb(main):009*     @hints = []
irb(main):010*     @tokens = []
irb(main):011*   end
irb(main):012*
irb(main):013*   # Ask method to collect six pairs of words and hints
irb(main):014*   def ask
irb(main):015*     puts "Enter six pairs of words and hints:"
irb(main):016*     6.times do |i|
irb(main):017*       print "Word ##{i + 1} (at least 4 characters): "
irb(main):018*       word = gets.chomp
irb(main):019*       until word.length >= 4
irb(main):020*         print "Word should be at least 4 characters. Re-enter Word ##{i + 1}: "
irb(main):021*         word = gets.chomp
irb(main):022*       end
irb(main):023*       print "Hint ##{i + 1}: "
irb(main):024*       hint = gets.chomp
irb(main):025*       @words << word
irb(main):026*       @hints << hint
irb(main):027*     end
irb(main):028*   end
irb(main):029*
irb(main):030*   # Prepare method to break words in half, capitalize, and shuffle tokens
irb(main):031*   def prepare
irb(main):032*     @tokens = @words.map { |word| word.scan(/.{1,2}/).map(&:capitalize) }.flatten.shuffle
irb(main):033*   end
irb(main):034*
irb(main):035*   # Display method to show the title, tokens, hints, and answer key
irb(main):036*   def display
irb(main):037*     puts "\nSix Little Words (Ruby)"
irb(main):038*     puts "Partial Words:"
irb(main):039*     @tokens.each_slice(4) { |row| puts row.join(' ') }
irb(main):040*     puts "\nHints:"
irb(main):041*     @hints.each { |hint| puts hint }
irb(main):042*     puts "\nAnswer Key:"
irb(main):043*     puts @words.each_slice(3).map { |row| row.join(' ') }.join("\n")
irb(main):044*   end
irb(main):045*
irb(main):046*   # Run method to clear collections, call Ask, Prepare, and Display
irb(main):047*   def run
irb(main):048*     @words.clear
irb(main):049*     @hints.clear
irb(main):050*     @tokens.clear
irb(main):051*     ask
irb(main):052*     prepare
irb(main):053*     display
irb(main):054*   end
irb(main):055> end
=> :run
irb(main):056>
irb(main):057> # Instantiate an object from SixLittle class
=> nil
irb(main):058> six_little_game = SixLittle.new
=> #<SixLittle:0x000001d3c54ea3c8 @hints=[], @tokens=[], @words=[]>
irb(main):059>
irb(main):060> # Call the Run method
irb(main):061> six_little_game.run
irb(main):062> #https://github.com/ThibaultJanBeyer/cheatsheets/blob/master/Ruby-Cheatsheet.md
irb(main):063> #https://learnxinyminutes.com/docs/ruby/