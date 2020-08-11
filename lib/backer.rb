class Backer
  attr_reader :name, :backed_projects

  def initialize(name) #takes a name on initialization, accessible through an attribute reader
    @name = name
    @backed_projects = [] #initializes with a @backed_projects attribute, an empty array
  end

  def back_project(project)
    @backed_projects << project #accepts a Project as an argument and stores it in a backed_projects array
    project.backers << self # also adds the backer to the project's backers arrays
  end


end
