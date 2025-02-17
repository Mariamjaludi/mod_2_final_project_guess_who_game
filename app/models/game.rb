class Game < ApplicationRecord
  has_many :game_characters

  has_many :players, through: :game_characters
  belongs_to :player

  has_many :game_questions
  has_many :questions, through: :game_questions

  #method that aliases "Players" as "Characters" for easier reference.
  def characters
    players #same as saying self.players
  end

  # this method will choose 25 characters for a 5x5 board. not including self.
  def self.set_up_game_characters(player_id)
    all_characters = Player.all.select{ |p| p.id != player_id}
    game_characters = all_characters.sample(25)
  end

  def picked_character
  end



end
