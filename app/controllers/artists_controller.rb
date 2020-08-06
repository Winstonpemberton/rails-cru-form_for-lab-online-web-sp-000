class ArtistsController < ApplicationController

	def new
		@artist = Artist.new
	end

  def create
  @artist = SchoolClass.new
  @artist.name = params[:name]
  @artist.bio = params[:bio]
  @artist.save
  redirect_to artist_path(@artist)
end

end
