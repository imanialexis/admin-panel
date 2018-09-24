class Instructor < ApplicationRecord
    has_many :cohorts, dependent: :destroy
end


