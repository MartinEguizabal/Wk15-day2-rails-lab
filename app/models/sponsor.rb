class Sponsor < ActiveRecord::Base
  has_many(:managers)
  has_many(:players, {through: :managers})
end
