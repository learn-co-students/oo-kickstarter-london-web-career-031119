require 'pry'

class Backer
  attr_reader :name
  attr_accessor :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(arr1)
    @backed_projects << arr1
    arr1.backers << self
    binding.pry
  end
end
