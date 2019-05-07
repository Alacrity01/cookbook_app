class Recipe < ApplicationRecord
  def ingredients_list
    self.ingredients.split(", ")
  end

  def directions_list
    self.directions.split(", ")
  end

  def friendly_created_at
    created_at.strftime("%b %d, %Y")
  end
end
