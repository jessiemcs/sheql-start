class Character < ActiveRecord::Base
    has_many :anime_characters
    has_many :animes, through: :anime_characters
    belongs_to :game
end
#height in inches and weight in pounds