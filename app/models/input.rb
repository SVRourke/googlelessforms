class Input < ApplicationRecord
    validates :inputType, inclusion: {in: %w(date checkbox email number text longtext telephone time url file), message: "%{value} is not a valid input type"}
    belongs_to :form
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