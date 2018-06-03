module RailsCacheInspector
  module FragmentForPatch
    def fragment_for(name = {}, options = nil, &block)
      fragment   = super(name, options, &block)
      style      = RailsCacheInspector.configuration.highlight_with[:style]
      class_name = RailsCacheInspector.configuration.highlight_with[:class_name]

      <<-HTML.strip_heredoc
        <div style="#{style}" class="#{class_name}">
          #{fragment}
        </div>
      HTML
    end
  end
end
