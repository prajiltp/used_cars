class Car < ApplicationRecord
  include CategoryList
  validates_presence_of :creator_email, :price, :model, :make, :year_of_manufacture
  validates :creator_email, format: { with: URI::MailTo::EMAIL_REGEXP }

  after_commit :send_notification, on: :create

  private
  def send_notification
    subscriber_email = Subscription.send(:"#{self.category}").map(&:email).uniq
    # ApplicationMailer.subscriber_notification(self, subscriber_email).deliver_later!
  end
end
