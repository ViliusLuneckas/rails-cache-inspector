require_relative 'rails-cache-inspector/configuration'
require_relative 'rails-cache-inspector/fragment_for_patch'
require_relative 'rails-cache-inspector/railtie'
require_relative 'rails-cache-inspector/version'

module RailsCacheInspector
  def self.configuration
    @configuration ||= Configuration.new(highlight_with: { style: 'filter: sepia(1)' })
  end
end
