class Project
  attr_reader :title
  attr_accessor :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(arr2)
    @backers << arr2
    arr2.backed_projects << self
  end
end
