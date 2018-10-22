class HomeController < ApplicationController
  def home
    puts Bitbay::API.get_ticker()
  end
end
