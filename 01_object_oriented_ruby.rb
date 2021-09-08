# Exercises for https://launchschool.com/books/oo_ruby

# 1. Create a class called MyCar. When you initialize a new instance or object of the class, allow the user to define some instance variables that tell us the year, color, and model of the car. Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well. Create instance methods that allow the car to speed up, brake, and shut the car off.

# 2. Add an accessor method to your MyCar class to change and view the color of your car. Then add an accessor method that allows you to view, but not modify, the year of your car.

# 3. You want to create a nice interface that allows you to accurately describe the action you want your program to perform. Create a method called spray_paint that can be called on an object and will modify the color of the car.

# 4. Add a class method to your MyCar class that calculates the gas mileage of any car.

# 5. Override the to_s method to create a user friendly print out of your object.

# 6. Create a superclass called Vehicle for your MyCar class to inherit from and move the behavior that isn't specific to the MyCar class to the superclass. Create a constant in your MyCar class that stores information about the vehicle that makes it different from other types of Vehicles.

# 7. Then create a new class called MyTruck that inherits from your superclass that also has a constant defined that separates it from the MyCar class in some way.

# 8. Add a class variable to your superclass that can keep track of the number of objects created that inherit from the superclass. Create a method to print out the value of this class variable as well.

class Vehicle 

  @@number_of_vehicles = 0

  def self.number_of_vehicles
    puts "#{@@number_of_vehicles} vehicle(s) created!"

  end

  def self.mileage(gallons, miles)
    puts "Car Mileage: #{gallons/miles}"
  end

  attr_accessor :year, :color, :model, :speed

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @@number_of_vehicles += 1
  end

  def accelerate(speed_increased_by)
    @speed += speed_increased_by
    puts "New Speed: #{speed}"
  end

  def brake(speed_decreased_by)
    @speed -= speed_decreased_by
    puts "New Speed: #{speed}"
  end

  def turn_off
    @speed = 0
    puts "New Speed: #{speed}"
  end

  def spray_paint(new_color)
    self.color = new_color
    puts "New Color: #{color}"
  end

  def to_s
    puts "My car is a #{color}, #{year}, #{model}"
  end

  def age 
    puts "Vehicle age: #{years_old}"
  end

  private def years_old 
    Time.now.year - self.year
  end

end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2
end


accord = MyCar.new(1994, 'forest green', 'honda accord' )
p accord
accord.accelerate(20)
p accord
accord.brake(10)
p accord
accord.turn_off
p accord
accord.spray_paint('black')
p accord
MyCar.mileage(100,3.3)
accord.to_s
Vehicle.number_of_vehicles
accord.age


# 9. Create a class 'Student' with attributes name and grade. Do NOT make the grade getter public, so joe.grade will raise an error. Create a better_grade_than? method, that you can call like so...
# puts "Well done!" if joe.better_grade_than?(bob)

class Student 

  def initialize(name,grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected def grade
    @grade
  end

end

joe = Student.new('Joe', 90)
bob = Student.new('Bob', 65)
# joe.grade
# joe.better_grade_than?(bob)
puts "Well done!" if joe.better_grade_than?(bob)


