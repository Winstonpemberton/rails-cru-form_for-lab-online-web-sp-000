class ArtistsController < ApplicationController

	def new
		@artists = Artist.new
	end

  def create
  @artists = SchoolClass.new
  @artists.name = params[:name]
  @artists.bio = params[:bio]
  @artists.save
  redirect_to artist_path(@artists)
end

end
