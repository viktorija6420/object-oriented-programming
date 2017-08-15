class Cat
def initialize (name, preferred_food, meal_time)
@name = name
@preferred_food = preferred_food
@meal_time = meal_time
end

def eats_at (meal_time)
  if meal_time < 12
    return "#{meal_time}AM."
  elsif meal_time == 12
    return "#{meal_time}PM."
  elsif meal_time == 0
    return "#{meal_time}AM."
  else
    return "#{meal_time}PM."
end
end

def meow
  print "My name is #{@name} and I eat #{@preferred_food} at #{eats_at(@meal_time)}."
end
end

cat1 = Cat.new("Mimi", "fish", 4)
puts cat1.inspect
cat2 = Cat.new("Anna", "grass", 20)
puts cat1.meow
puts cat2.meow
