class Borrower < ApplicationRecord
  has_secure_password

  email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, :email, :money, :presence => true
  validates :email, uniqueness: { case_sensitive: false } , :format => { :with => email_regex }
end
