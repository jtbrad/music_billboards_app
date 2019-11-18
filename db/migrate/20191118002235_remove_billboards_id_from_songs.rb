class RemoveBillboardsIdFromSongs < ActiveRecord::Migration[6.0]
  def change
    remove_reference :songs, :billboards
  end
end
