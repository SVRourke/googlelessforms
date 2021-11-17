class Form < ApplicationRecord
    belongs_to :user
    has_many :inputs
    # dependent_delete destroy?
    # has_many :submissions

end
