require 'freshdesk/ticket/request'
require 'freshdesk/ticket/response'
module Freshdesk
  module Ticket

    def self.get(ticket_id, options={})
      request = Request.new(options)
      request.id = ticket_id
      Response.new(request.get)
    end

    def self.create(options={})
      # todo build ticket
    end

    def self.index(options={})
      request = Request.new(options)
      request.get.map do |val|
        Response.new(val)
      end
    end

  end
end