class User < ApplicationRecord
    has_secure_password
    # we can add multiple attributes validation in one-line 
    # validates_presence_of :password, :first_name, :email
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true
    validates :first_name, presence: true
end
