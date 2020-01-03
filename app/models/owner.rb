class Owner < ApplicationRecord
    has_many :vacation_homes
    has_many :locations, through: :vacation_homes
end
