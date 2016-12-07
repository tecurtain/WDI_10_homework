require 'pry'

@list_of_things = []

def get_list

  puts "\n" + "Please provide me with a list of things."
  things = gets.chomp
  puts "\n" + "You have entered in #{things}"
  @list_of_things = things.split(', ')
end

def group_size
  puts "\n" + "What size would you like the group to be?"
  x = gets.chomp.to_i
  return @list_of_things.each_slice(x).to_a

end

  get_list()
  split_groups = group_size()
  puts split_groups.inspect
