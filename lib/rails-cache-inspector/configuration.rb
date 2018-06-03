module RailsCacheInspector
  class Configuration
    attr_accessor :highlight_with

    def initialize(init_with = {})
      init_with.each { |k, v| public_send("#{k}=", v) }
    end
  end
end
