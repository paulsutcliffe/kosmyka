class ProjectsController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index, :show]

  def index
    @projects = Project.order("launched DESC")
  end
end
