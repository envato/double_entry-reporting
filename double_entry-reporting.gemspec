
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'double_entry/reporting/version'

Gem::Specification.new do |gem|
  gem.name                  = 'double_entry-reporting'
  gem.version               = DoubleEntry::Reporting::VERSION
  gem.authors               = ['Envato']
  gem.email                 = ['rubygems@envato.com']
  gem.summary               = 'Tools to build your double entry financial ledger'
  gem.homepage              = 'https://github.com/envato/double_entry-reporting'
  gem.license               = 'MIT'

  gem.metadata              = {
    'bug_tracker_uri'   => 'https://github.com/envato/double_entry-reporting/issues',
    'changelog_uri'     => "https://github.com/envato/double_entry-reporting/blob/v#{gem.version}/CHANGELOG.md",
    'documentation_uri' => "https://www.rubydoc.info/gems/double_entry-reporting/#{gem.version}",
    'source_code_uri'   => "https://github.com/envato/double_entry-reporting/tree/v#{gem.version}",
  }

  gem.files                 = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(?:README|LICENSE|CHANGELOG|lib/)})
  end
  gem.require_paths         = ['lib']
  gem.required_ruby_version = '>= 2.2.0'

  gem.add_dependency 'double_entry',  '>= 2.0.0'
  gem.add_dependency 'activerecord',  '>= 3.2.0'
  gem.add_dependency 'activesupport', '>= 3.2.0'
  gem.add_dependency 'money',         '>= 6.0.0'
  gem.add_dependency 'railties',      '>= 3.2.0'

  gem.add_development_dependency 'mysql2'
  gem.add_development_dependency 'pg'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'sqlite3'

  gem.add_development_dependency 'database_cleaner'
  gem.add_development_dependency 'factory_bot'
  gem.add_development_dependency 'generator_spec'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rspec-its'
  gem.add_development_dependency 'ruby-prof'
  gem.add_development_dependency 'timecop'
end
