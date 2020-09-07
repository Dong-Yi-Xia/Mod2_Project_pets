class Rent < ApplicationRecord
  belongs_to :user
  belongs_to :pet

  def location_place
      %w[NYC, Queens, Bronx, Brooklyn, Staten Island]
  end

end
