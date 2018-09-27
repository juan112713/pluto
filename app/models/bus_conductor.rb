class BusConductor < ApplicationRecord
  belongs_to :bus
  belongs_to :conductor
end
