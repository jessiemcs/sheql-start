class AnimeCharacter < ActiveRecord::Base
    belongs_to :anime
    belongs_to :character
end