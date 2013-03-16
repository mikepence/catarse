class HomeController < ApplicationController

  def index
    @marquee_project = Project.first
    @featured_project = Project.first
    @local_projects = Project.limit(4).all
    @expiring_projects = Project.limit(4).all
  end
end