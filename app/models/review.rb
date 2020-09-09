class Review < ApplicationRecord
  belongs_to :user
  belongs_to :pet

  validates :user, presence: true 
  validates :content, presence: true, length: {minimum: 3}
  validates :rating, presence: true
  validates :pet, presence: true, uniqueness: {scope: :user_id, message: ": You Have Already Review This Pet"}

end
