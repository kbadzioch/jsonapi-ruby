# frozen_string_literal: true

require_relative 'lib/jsonapi/version'

Gem::Specification.new do |spec|
  spec.name = 'jsonapi-ruby'
  spec.version = JSONAPI::VERSION.dup
  spec.platform = Gem::Platform::RUBY
  spec.authors = ['Konrad Badzioch']
  spec.email = ['kbadzioch.dev@gmail.com']

  spec.summary =
    'A library that helps with implementing web API that follows JSON:API specification.'
  spec.description =
    'A library that helps with implementing web API that follows JSON:API specification.'\
    'It is oriented to support implementing and testing API for applications built with '\
    'Ruby on Rails and Hanami frameworks'

  spec.homepage = 'https://github.com/kbadzioch/jsonapi-ruby/'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.0.0'
  spec.require_paths = ['lib']

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/kbadzioch/jsonapi-ruby/'
  spec.metadata['changelog_uri'] = 'https://github.com/kbadzioch/jsonapi-ruby/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
