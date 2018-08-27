class Instructor < ApplicationRecord
    has_many :cohorts
    resourcify
end
