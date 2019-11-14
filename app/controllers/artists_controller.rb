class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit]

  def index
    @artists = Artist.all
  end

  def show
    
  end

  def edit

  end

  private

    def set_artist
      @artist = Artist.find(params[:id])
    end
  
end
