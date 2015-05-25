class Fibber

  attr_accessor :x

  # Creates an Array of the Fibonnaci Sequence with the desired number of digits
  def self.fibb(quantity)
    @x = [0,1]
    quantity.times do |b|
      if b>1
        @x[b]=@x[b-1]+@x[b-2]
      end
    end
  end

  def self.jagged
    @x.each_slice(5){|x| puts x.join(" ")}
  end

  def self.better
    @x.map{|a| a.to_s.rjust(4," ")}.each_slice(5){|b| puts b.join" "}
  end


  def self.fancy
    @x.map{|a| a.to_s.rjust(@x.last.to_s.length+1," ")}.each_slice(5){|b| puts b.join" "}
  end
end

puts "How Long Should the Fibonacci Sequence Be?"

input = gets.chomp
quantity = input.to_i


Fibber.fibb(quantity)
Fibber.jagged
Fibber.better
Fibber.fancy






