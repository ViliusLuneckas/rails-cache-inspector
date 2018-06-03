module RailsCacheInspector
  class Railtie < Rails::Railtie
    config.to_prepare do
      return unless Rails.env.development? && Rails.application.config.action_controller.perform_caching

      ActionView::Helpers::CacheHelper.send(:include, FragmentForPatch)
    end
  end
end
