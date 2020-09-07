class User < ApplicationRecord
    has_many :rents, dependent: :destroy 
    has_many :adoptions, dependent: :destroy 
    has_many :reviews, dependent: :destroy 
    has_many :pets, through: :rents
    has_many :pets, through: :adoptions
    has_many :pets, through: :reviews

    validates :name, presence: true, uniqueness: true
    has_secure_password 
end
