class Stroll < ApplicationRecord
  has_many   :dogs
  belongs_to :dogsitter
end
