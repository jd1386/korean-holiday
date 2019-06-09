Gem::Specification.new do |spec|
  spec.name        = 'korean-holiday'
  spec.version     = '0.0.0'
  spec.default_executable = 'korean_holiday'
  spec.date        = '2019-06-09'
  spec.summary     = 'Korean Holiday'
  spec.description = 'A simple gem that checks if any given date is a Korean official holiday.'
  spec.authors     = ['Jungdo Lee']
  spec.email       = 'lee.jungdo@gmail.com'
  spec.files       = ['lib/korean-holiday.rb', 'lib/korean-holiday/parser.rb']
  spec.homepage    =
    'https://github.com/jd1386/korean-holiday'
  spec.license       = 'MIT'

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  end
end
