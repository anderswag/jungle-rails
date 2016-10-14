class Admin::DashboardController < ApplicationController
  USER = ENV['ADMIN_USER']
  PASS = ENV['ADMIN_PASS']
  http_basic_authenticate_with name: USER, password: PASS
  def show
  end
end

