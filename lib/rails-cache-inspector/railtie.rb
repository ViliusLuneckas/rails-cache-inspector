module RailsCacheInspector
  class Railtie < Rails::Railtie
    config.to_prepare do
      return unless Rails.env.development? && Rails.application.config.action_controller.perform_caching

      ApplicationHelper.prepend FragmentForPatch
    end
  end
end
