class Adoption < ApplicationRecord
  belongs_to :user
  belongs_to :pet

  def find_male
    Pet.all.find_by(gender: "male")
  end 

end
