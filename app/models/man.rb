class Man < ApplicationRecord
    has_many :relationships
    has_many :women, through: :relationships
end
