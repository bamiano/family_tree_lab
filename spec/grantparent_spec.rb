require_relative 'spec_helper'
require_relative '../grandparent'

describe Grandparent do

  before(:context) do
    @grandparent = Grandparent.new("Patricia", 58, "female")
  end

  describe "Initialization" do
    it "should be an instance of the grandparent class" do
      expect(@grandparent).to be_instance_of(Grandparent)
    end
  end

  describe "#name" do
    it "should be the name in the instance of the grandparent class" do
      expect(@grandparent.name).to eq("Patricia")
    end
  end

  describe "#age" do
    it "should be the age in the instance of the grandparent class" do
      expect(@grandparent.age).to eq(58)
    end
  end

  describe "#gender" do
    it "should be the gender in the instance of the grandparent class" do
      expect(@grandparent.gender).to eq("female")
    end
  end

  describe "class methods" do
    it "should have a way to access the family variable" do
      expect(Grandparent.family.size).to eq(3)
    end
    it "should have a way to access the grandchildren" do
      expect(Grandparent.grandchildren).to eq(1)
    end
  end

  describe "Adding to the family" do
    it "gets added to the family" do
      expect(Grandparent.family.empty?).to be(false)

    end
  end

  describe "Show family" do
    it "Should return an array" do
      expect(Grandparent.show_family.class).to be(Array)
    end

    # BONUS
    # Loop over the array returned by Grandparent.showFamily and see
    # if the number of instance variables at each index is >= 3
    xit "Should have at least three instance variables at every index of the array" do


    end
  end
end