class AddSongsBelongsToBillboards < ActiveRecord::Migration[6.0]
  def change
    add_reference :songs, :billboards, null: true, foreign_key: false
  end
end
