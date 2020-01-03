class Location < ApplicationRecord
    has_many :vacation_homes
    has_many :owners, through: :vacation_homes
end
