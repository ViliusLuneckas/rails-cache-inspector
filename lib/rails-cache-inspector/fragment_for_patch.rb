module RailsCacheInspector
  module FragmentForPatch
    def self.included(base)
      base.send :alias_method_chain, :fragment_for, :cache_friendly
    end

    def fragment_for_with_cache_friendly(name = {}, options = nil, &block)
      fragment = fragment_for_without_cache_friendly(name, options, &block)

      <<-HTML.strip_heredoc
      <div style="background-color: rgba(0, 255, 23, 0.22) !important" data-cache-friendly=true>
        #{fragment}
      </div>
      HTML
    end
  end
end
