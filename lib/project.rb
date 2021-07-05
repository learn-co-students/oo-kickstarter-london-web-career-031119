class Project

  attr_accessor
  attr_reader :title, :backers
  attr_writer

  @@all = []

  def initialize(title)
    @title = title
    @backers = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_backer(backer)
    @backers << backer
    if !backer.backed_projects.include?(self)
      backer.back_project(self)
    end
  end
  
end