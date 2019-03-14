class Project

  attr_accessor :title, :backers

def initialize(title)
  @title = title
  @backers = []
end

def add_backer(backer)
  @backers << backer
  # backed_projects << project
  backer.backed_projects << self
end

end
