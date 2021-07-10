require 'pry'
require_relative './project.rb'

class Backer

  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
    #adds SELF to the project's backers array
    #how to access project's backers array????? project.backers
  end
  
end

# spencer = Backer.new("Spencer") #magic
# steven = Backer.new("Steven") # book
# logan = Backer.new("Logan") #hoverboard

# binding.pry
# puts "ladidi"
