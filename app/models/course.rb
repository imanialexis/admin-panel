class Course < ApplicationRecord
    has_many :cohorts
    resourcify
end
