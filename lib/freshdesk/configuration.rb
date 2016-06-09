module Freshdesk
  class Configuration
    API_VERSION = 'v2'
    
    attr_accessor :subdomain, :user, :password, :debug

    def initialize
      self.debug = true#false
    end

    def url
      "https://#{self.subdomain}.freshdesk.com/api/#{API_VERSION}"
    end

  end
end