require 'rest_client'
module Freshdesk
  class BaseResponse < Base

    def self.parse_dates
      []
    end

  end
end