# Strict with Arguments, Loose Return type
def print_name(p)
  puts "Hello Welcome to Proc "
  p.call("Smruti")
  puts "Hello Bye Bye Proc"
end
lam =lambda {|name| puts "Hello #{name} ! How are you today ?"; return }
print_name lam