require 'pry'
require_relative './backer.rb'

class Project

  attr_accessor :title, :backers, :backer

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self #add the project to the backed_projects array of a Backer
  end

end

# magic = Project.new("Magic The Gathering Thing") #spencer
# book = Project.new("Ruby, Ruby, and More Ruby") #steven
# hoverboard = Project.new("Awesome Hoverboard") #logan = Backer.new("Logan")

# binding.pry
# puts "ladada"
