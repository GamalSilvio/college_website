class PagesController < ApplicationController
  skip_before_action :require_user
  
  def about
    @project_description = AboutGem::About.description
    @project_image_url = AboutGem::About.image_url
  end
end