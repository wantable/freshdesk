module Freshdesk
  module Ticket
    class Response < BaseResponse
      # http://developer.freshdesk.com/api/#ticket_attributes

      attr_accessor :attachments, :cc_emails, :company_id, :custom_fields, :deleted, :description, :description_text, 
                    :due_by, :email, :email_config_id, :facebook_id, :fr_due_by, :fr_escalated, :fwd_emails, :group_id, 
                    :id, :is_escalated, :name, :phone, :priority, :product_id, :reply_cc_emails, :requester_id, :responder_id, 
                    :source, :spam, :status, :subject, :tags, :to_emails, :twitter_id, :type, :created_at, :updated_at, :closed_at,
                    :resolved_at, :first_responded_at

      def self.parse_dates
        [:due_by, :fr_due_by, :created_at, :updated_at]
      end

    end
  end
end
