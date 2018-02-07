class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.maximum(:rating).name
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.popular_shows
    Show.where("rating > 5")
  end

  def self.ratings_sum
    
  end

end
