class Follow < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :foreign_key => "participants",
             :counter_cache => true

  # Indirect associations

  # Validations

end
