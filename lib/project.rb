require_relative './backer.rb'
require 'pry'

class Project

attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

def add_backer(backer)
  @backers.push backer
  backer.backed_projects.push self
end


end
