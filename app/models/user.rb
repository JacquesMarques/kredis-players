class User < ApplicationRecord
  kredis_hash :preferences
end
