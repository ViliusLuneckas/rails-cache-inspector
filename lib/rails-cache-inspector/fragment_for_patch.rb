module RailsCacheInspector
  module FragmentForPatch
    def fragment_for(name = {}, options = nil, &block)
      fragment = super(name, options, &block)

      <<-HTML.strip_heredoc
        <div style="#{RailsCacheInspector.configuration.highlight_with[:style]}">
          #{fragment}
        </div>
      HTML
    end
  end
end
