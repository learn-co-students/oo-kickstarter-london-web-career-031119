class Backer

  attr_reader :backed_projects, :name


  def initialize(name)
    @name = name
    @backed_projects = []

  end

# adds the backer to the project's backers array
  def back_project(project)
    @backed_projects << project

    project.backers << self
    # @backed_projects << backers

  end


end
