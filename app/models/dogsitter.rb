class Dogsitter < ApplicationRecord
  has_many   :strolls, dependent: :destroy
  belongs_to :city
end
