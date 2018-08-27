class Student < ApplicationRecord
    belongs_to :cohort
    resourcify
end
