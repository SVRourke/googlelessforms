class Input < ApplicationRecord
    validates :inputType, inclusion: {in: %w(date checkbox email number text longtext telephone time url file), message: "%{value} is not a valid input type"}
    belongs_to :form
    has_many :valueOptions, dependent: :destroy
    accepts_nested_attributes_for :valueOptions
end

# submit (default)
# date
# checkbox
# email
# number
# text
# longtext
# telephone
# time
# url
# file*

# check if required