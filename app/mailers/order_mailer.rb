class OrderMailer < ApplicationMailer
  default from: "no-reply@jungle.com"

  def order_mailer(user, order)
    @order = order
    @user = user
    @url  = "localhost:3000/orders"
    puts user.email
    mail(to: @user.email, subject: 'yoooo')
  end

end
