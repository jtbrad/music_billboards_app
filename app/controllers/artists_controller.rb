class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update]

  def index
    @artists = Artist.all
  end

  def show
    
  end

  def edit

  end

  def update

    if @artist.update(params.require(:artist).permit(:first_name, :last_name, :age, :city, :instrument))
      redirect_to artist_path(@artist)
    else
      render :edit
    end

  end

  private

    def set_artist
      @artist = Artist.find(params[:id])
    end
  
end
