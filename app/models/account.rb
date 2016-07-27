class Account < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true
end
