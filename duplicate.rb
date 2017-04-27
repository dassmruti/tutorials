#
# begin
# WAP  to eliminate duplicates from array !
# end
#
#
# class Duplicate
#   def self.find_dup(array)
#     array.inject({}){ |ele, n| ele[n] = nil; ele }.keys
#   end
# end
#
# puts Duplicate.find_dup([1,1, 88,88,2, 2, 3,4,4])