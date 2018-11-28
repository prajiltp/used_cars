class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def subscriber_notification(car, emails)
    @car = car
     mail(
      bcc: emails,
      subject: "There is a new car added in #{@car.category.titleize}"
    )
  end
end
