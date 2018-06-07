class User < ApplicationRecord
  # Direct associations

  has_many   :bets,
             :foreign_key => "owner",
             :dependent => :destroy

  has_many   :follows,
             :foreign_key => "participants",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
