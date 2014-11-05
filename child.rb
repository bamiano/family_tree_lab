require_relative 'grandparent'
require_relative 'parent'

class Child < Parent

attr_accessor :fav_color
@@colorsArray = ["blue", "green", "red", "pink", "orange", "purple"]


  def initialize(name,age,gender,fav_color)
    super(name, age, gender)
    @fav_color = @@colorsArray.sample
    @@children +=1
    @@grandchildren +=1
    @@family << self
  end

  def self.getColors
    @@colorsArray
  end

  def grow_up
    @age +=1
  end

  def self.talk (text=nil)

    if @@grow_up > 2
      puts "#{text}, #{@fav_color}"

      elsif @@grow_up <= 2
        puts "WAHHHH!!!"

    end
  end

end

