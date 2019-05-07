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

  def friendly_prep_time
    # input: Integer prep_time 125
    # output: String "2 hours, 5 minutes"

    # 1 - Split time into hours and minutes
    # 2 - create a english display of hours and minutes
    hours = prep_time / 60
    minutes = prep_time % 60

    time_string = ""

 
    time_string += "#{hours} #{'hour'.pluralize(hours)}" if hours > 0
    time_string += ", " if hours > 0 && minutes > 0
    time_string += "#{minutes} #{'minute'.pluralize(minutes)}" if minutes > 0
  
    time_string
  end
end
