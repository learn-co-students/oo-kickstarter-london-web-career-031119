require 'pry'

class Backer

attr_accessor
attr_writer
attr_reader :backed_projects, :name

def initialize(name)
 @backed_projects = []
 @name = name
end

def back_project(project)
@backed_projects << project
project.backers << self
end


end
