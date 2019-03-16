class Project
 attr_accessor :title, :backers
 
 def initialize (title)
  @title = title 
  @backers = []
 end 
  
  def add_backer (project)
    @backers << project
    if !project.backed_projects.include?(self)
      project.back_project(self)
    end
  end  
  
  
end 