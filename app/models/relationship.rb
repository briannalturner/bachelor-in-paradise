class Relationship < ApplicationRecord
    belongs_to :woman
    belongs_to :man


def relationship_length
    start_date = self.start_date
    end_date = self.end_date
    (end_date - start_date).to_i
end

end

