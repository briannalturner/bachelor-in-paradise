class Relationship < ApplicationRecord
    belongs_to :woman
    belongs_to :man


    def relationship_length
        if self.end_date.nil?
            (Time.now.to_date - self.start_date).to_i
        else
            (self.end_date - self.start_date).to_i
        end
    end

end

