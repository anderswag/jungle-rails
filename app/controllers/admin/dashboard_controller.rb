class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: "Jungle", password: "Book"
  before_filter :authorize
  def show
  end
end

