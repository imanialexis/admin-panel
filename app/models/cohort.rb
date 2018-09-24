class Cohort < ApplicationRecord
    belongs_to :instructor
    has_many :students , dependent: :destroy
    belongs_to :course
end
