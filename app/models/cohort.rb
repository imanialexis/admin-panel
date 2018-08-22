class Cohort < ApplicationRecord
    has_many :instructors
    has_many :students
    belongs_to :course
end
