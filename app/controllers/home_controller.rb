class HomeController < ApplicationController
  def index
  end

  def mail
    TestMailer.welcome_email('diamond.oliver@gmail.com').deliver_now
    render 'index'
  end
end
