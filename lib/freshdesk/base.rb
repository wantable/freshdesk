module Freshdesk
  class Base

    attr_accessor :errors

    def initialize(options={})
      self.errors = {}

      options.each do |key, value|
        set_value(key, value)
      end
    end

    protected

    def set_value(key, value)
      # could also use self.send("#{key}=", value) but thats slightly less safe
      value = Time.parse(value) if self.class.parse_dates.include?(key.to_sym)
      self.instance_variable_set("@#{key}", value)
    end

    def get_value(key)
      value = instance_variable_get("@#{key}")
      if value 
        if value.class == Hash 
          value.inject({}) do |hash, item|
            hash[item[0]] = item[1].to_s
            hash
          end
        else
          value.to_s # everything is a string...
        end
      else
        value
      end
    end
  end
end