module Freshdesk
  module Ticket
    class Request < BaseRequest

      attr_accessor :id, :options # fetching specific ticket_id

      def self.resource_name
        'tickets'
      end

    end
  end
end