class Backer

  attr_accessor
  attr_reader :name, :backed_projects
  attr_writer

  @@all = []

  def initialize(name)
    @name = name
    @backed_projects = []
    @@all << self
  end

  def self.all
    @@all
  end

  def back_project(project)
    @backed_projects << project
    if !project.backers.include?(self)
      project.add_backer(self)
    end
  end

end