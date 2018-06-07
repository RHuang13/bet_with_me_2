class Choice < ApplicationRecord
  # Direct associations

  has_many   :followers,
             :class_name => "Follow",
             :dependent => :nullify

  belongs_to :game,
             :class_name => "Bet",
             :foreign_key => "bet",
             :counter_cache => true

  # Indirect associations

  # Validations

end
