class Pet < ApplicationRecord
    has_many :appointments
    has_many :rents
    has_many :reviews
    has_many :users, through: :rents
    has_many :users, through: :adoptions
    has_many :users, through: :reviews
end
