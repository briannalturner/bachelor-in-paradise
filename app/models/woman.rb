class Woman < ApplicationRecord
    has_many :relationships
    has_many :men, through: :relationships
end
