# require 'pry'

class Backer

    attr_reader :name
    attr_accessor :backed_projects

    def initialize(name)
        @name = name
        @backed_projects = []
    end

     def back_project (project)
         @backed_projects << project
         project.backers <<  self
    end

end

# spencer = Backer.new("Spencer")
# # magic = Project.new("Magic The Gathering")
# # binding.pry
# # p "test"

# # spencer.back_project (magic)
# # spencer.backed_projects