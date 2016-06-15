class ArtistsController < ApplicationController
  before_action :get_artist, only: [:edit, :update, :show, :delete]

  def index
    @artists = Artist.all
  end

  def show
  end

  private
  def artist_params
    params.require(:artist).permit(:name, :image_url)
  end

  def get_artist
    @artist = Artist.find_by(params[:id])
  end
end
