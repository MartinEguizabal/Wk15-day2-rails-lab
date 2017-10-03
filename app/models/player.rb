class Player < ActiveRecord::Base
  belongs_to :team
  has_many(:managers)
  has_many(:sponsors, {through: :managers})
end
