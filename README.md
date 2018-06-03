# Cache::Friendly

Dead simple tool for visual debugging of fragment cache.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cache-friendly', group: :development
```

## Usage

### Configure highlighting

```Ruby
# config/initializers/rails_cache_inspector.rb

RailsCacheInspector.highlight_with = { 
  style: 'filter: sepia(1);'  # currently default 
}

```

### Configure rails application

Make sure caching is turned on in development environment

```ruby
# config/environments/development.rb

config.action_controller.perform_caching = true
```
