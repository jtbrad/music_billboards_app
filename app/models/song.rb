class Song < ApplicationRecord
  belongs_to :artist, :billboard
end
