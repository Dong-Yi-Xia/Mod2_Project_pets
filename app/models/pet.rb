class Pet < ApplicationRecord
    has_many :rents, dependent: :destroy 
    has_many :adoptions, dependent: :destroy 
    has_many :reviews, dependent: :destroy 
    has_many :users, through: :rents
    has_many :users, through: :adoptions
    has_many :users, through: :reviews
end
