class Actor < ApplicationRecord
  has_many :Movie, :through => :ActorMovie
has_many :ActorMovie
end
