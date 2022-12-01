class User < ApplicationRecord
  validates :username, presence: true, allow_blank: false
  validates :password, presence: true, allow_blank: false
end
