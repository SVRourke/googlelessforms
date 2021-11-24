class Submission < ApplicationRecord
    belongs_to :form
    has_many :answers    
    accepts_nested_attributes_for :answers
end

