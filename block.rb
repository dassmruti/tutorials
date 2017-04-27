a=[3,6,9,5,8,7,5]

a.each { |ele| print ele*4 + ele*3 }

def add
 puts "Adding"
  yield(4) if block_given?
end

add  { |ele| print ele*4 + ele*3 }
class Array
  def random_each
    shuffle.each do |obj|
      yield obj
    end
  end
end
puts a.class
a.random_each { |ele| puts ele }