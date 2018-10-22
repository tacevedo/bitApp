module Bitbay
  class API
    attr_accessor :errors

    def self.get_ticker()
      Request.get(nil)
    end
  end
end
