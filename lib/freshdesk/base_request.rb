require 'rest_client'
require 'json'
module Freshdesk
  class BaseRequest

    attr_accessor :options

    def initialize(options={})
      raise 'subdomain error' if Freshdesk.configuration.subdomain.nil?
      self.options = options
    end

    def get
      begin
        puts "request to #{build_url}" if Freshdesk.configuration.debug
        response = RestClient::Request.execute(method: :get, url: build_url, 
                                               user: Freshdesk.configuration.user, password: Freshdesk.configuration.password, 
                                               headers: {params: self.options}
                                              )
        JSON.parse(response)
      rescue RestClient::Exception => exception
        puts "API Error: Your request is not successful. If you are not able to debug this error properly, mail us at support@freshdesk.com with the follwing X-Request-Id"
        puts "X-Request-Id : #{exception.response.headers[:x_request_id]}"
        puts "Response Code: #{exception.response.code} \n Response Body: #{exception.response.body} \n"
      end
    end

    def post
    end

    def build_url
      base = "#{Freshdesk.configuration.url}/#{self.class.resource_name}"
      base += "/#{self.id}" unless self.id.nil?
      base
    end
  end
end