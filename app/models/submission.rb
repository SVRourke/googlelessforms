class Submission < ApplicationRecord
    belongs_to :form
    has_many :answers    
end

