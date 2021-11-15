class User < ApplicationRecord
    has_secure_password
    has_many :forms

    # has many forms

end
