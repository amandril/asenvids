class PublicController < ApplicationController

  def index
  	# Display videos on homepage
  	# Display admin link at bottom
  	@video = Video.vid_position
  end

  def show
  	# Show invididual video in a page
  end
end
