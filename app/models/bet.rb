class Bet < ApplicationRecord
  # Direct associations

  belongs_to :game_owner,
             :class_name => "User",
             :foreign_key => "owner",
             :counter_cache => true

  # Indirect associations

  # Validations

end
