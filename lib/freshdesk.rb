require 'freshdesk/version'
require 'freshdesk/configuration'

require 'freshdesk/base'
require 'freshdesk/base_request'
require 'freshdesk/base_response'

require 'freshdesk/ticket'



module Freshdesk
  # Your code goes here...
  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration) if block_given?
  end

  def self.ticket(ticket_id, options={})
    Ticket.get(ticket_id, options)
  end
  def self.tickets(options={})
    Ticket.index(options)
  end

end
