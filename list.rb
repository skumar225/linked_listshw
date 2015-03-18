# letter_o = {
#   val: "o",
#   next: nil
# }


# letter_d = {
#   val: "d",
#   next: letter_o
# }

#Create a new node, set value to D

class Node   #methods that are grouped together to define Node

     attr_reader :val, :next

  def initialize(val)  
    @val = val  #new instance of a parameter
    @next = nil  #new instance of next empty space 
  end
  def add_to_tail(val)
    #add o to end of d
    if @next == nil # If I'm the tail
      @next = Node.new(val)
    else
      #let someone else take care of the work
      @next.add_to_tail(val) #in relation to hard coded head

    end 

  end 

  def to_s  #Ruby know this method to convert to string under the hood 
    if @next == nil #if there's no next, I AM THE END
    @val
  else #if I'm not the end, print word 
    "#{@val} #{@next}"
    end
  end

  def length
    if @next == nil  #When at the end of the word
      1  
    else
      1 + @next.length
    end 
  end

  def remove val #find node to kill
 if @next == nil 
    #find reference value of prev node
    @next = @next.next 
    # Change reference value to that of the node after
else 

  end 

  end



head = Node.new("d")
head.add_to_tail("o")
head.add_to_tail("g")
head.add_to_tail("g")
head.add_to_tail("y")
puts head.length

puts head.remove("o")
puts head

# puts result
# letter_d = Node.new("d")
# puts letter_d

#HW

#Write a function 'remove' that removes a node from the list
