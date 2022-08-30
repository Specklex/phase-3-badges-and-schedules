# Write your code here.

def badge_maker name
  "Hello, my name is #{name}."
end

def batch_badge_creator people
    array = []
   people.each{|name|array << badge_maker(name)}
   array
end

def assign_rooms people
    array = []
    people.each_with_index do |name, index|
      array <<  "Hello, #{name}! You'll be assigned to room #{index + 1}!"
    end
    array
end

def printer people
    batch_badge_creator(people).each {|names| puts names}
    assign_rooms(people).each { |room| puts room}
end
