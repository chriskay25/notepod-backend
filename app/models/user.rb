class User < ApplicationRecord
    has_secure_password
    has_many :notes
    has_many :favorite_podcasts
    validates :username, presence: true, uniqueness: true
end