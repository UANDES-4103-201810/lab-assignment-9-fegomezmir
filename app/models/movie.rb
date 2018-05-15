class Movie < ApplicationRecord
  belongs_to :Director
  belongs_to :Address
  has_many :ActorMovie
  has_and_belongs_to_many :Category
end
