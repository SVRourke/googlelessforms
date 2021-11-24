class Form < ApplicationRecord
    belongs_to :user
    has_many :inputs, dependent: :destroy
    has_many :submissions, dependent: :destroy

end
