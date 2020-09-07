class Adoption < ApplicationRecord
  belongs_to :user
  belongs_to :pet

  def up_for_adoption
    Pet.where(:adoption_status => "yes")
  end 

end
