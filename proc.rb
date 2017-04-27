#Strict Return type , Loose Argument Check
def print_name(p)
  puts "Hello Welcome to Proc "
  p.call("Smruti")
  puts "Hello Bye Bye Proc"
end

def a
  p = Proc.new {|name| puts "Hello #{name} ! How are you today ?";}
  print_name p
end
puts a


