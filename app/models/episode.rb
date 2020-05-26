class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def avg_rating
        rating_count = self.appearances.length
        rating_total = self.appearances.map{|a| a.rating}.sum.to_f
        rating_total/rating_count
    end
end
