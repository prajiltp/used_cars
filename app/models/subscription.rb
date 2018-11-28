class Subscription < ApplicationRecord
  include CategoryList
  validates_presence_of :email, :category
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :email, uniqueness: { scope: :category }
end
