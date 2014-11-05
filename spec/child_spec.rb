require 'spec_helper'
require_relative '../child'

describe Child do

  before(:context) do
    @child = Child.new("Jack", 9 ,"male", "green")
  end

  describe "Initialization" do
    it "should be an instance of the grandparent class" do
      expect(@child).to be_instance_of(Child)
  end

    # name
    it "should be the name in the instance of the grandparent class" do
      expect(@child.name).to eq("Jack")
    end

    # age
    it "should be the age in the instance of the grandparent class" do
      expect(@child.age).to eq(9)
    end

    # gender
    it "should be the gender in the instance of the grandparent class" do
      expect(@child.gender).to eq("male")
    end

    # fav_color
    it "is assigned a favColor" do
      expect(Child.getColors).to include(@child.fav_color)
    end

    it "should increment the children variable by 1 when created" do
      expect(Child.children).to eq(1)
    end
    it "should increment the grandchildren variable by 1 when created" do
      expect(Child.grandchildren).to eq(1)
    end
  end

  describe "#growUp" do
   it "gets older by one year when the method is called" do
      expect(@child.grow_up).to eq(10)

    end
  end


  # BONUS
  # For now, to get these tests to pass, have the last line of your 'talking' method be the text you want to display
  # It is beyond the scope of this lab to try to use rspec to test what you 'puts' out so don't worry about that
  describe "Talking" do
    xit "should return the message 'Wahhh!' if the child's age is <2 " do

    end
    xit "should return a message and include the favorite color when the age is over 2" do


    end
  end

end