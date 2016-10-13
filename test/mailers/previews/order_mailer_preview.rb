class OrderMailerPreview < ActionMailer::Preview


  def order_mailer
    @user = User.first
    @order = Order.first
    OrderMailer.order_mailer(@user,@order)
  end

end