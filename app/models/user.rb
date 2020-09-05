class User < ApplicationRecord
    has_many :appointments
    has_many :rents
    has_many :reviews
    has_many :pets, through: :rents
    has_many :pets, through: :adoptions
    has_many :pets, through: :reviews

    validates :name, presence: true, uniqueness: true
    has_secure_password
end
