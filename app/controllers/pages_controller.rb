class PagesController < ApplicationController
  def contact
  end

  def about
    @title = "Tim about page"
  end

  def home
    @projects = Project.all
  end
  
  def error
  end

end
