Gem::Specification.new do |s|
  s.name = "round"
  s.version = "0.0.1"
  s.license = "MIT"
  s.authors = [
    "Matthew King",
    "Julian Vergel de Dios"
  ]
  s.email = [
    "matthew@pandastrike.com",
    "julian.vergeldedios@gmail.com"
  ]
  s.homepage = "https://github.com/GemHQ/round-rb"
  s.summary = "Ruby client for the Gem API"

  s.files = %w[
    LICENSE
    README.md
  ] + Dir["lib/**/*.rb"]
  s.require_path = "lib"

  s.add_dependency("patchboard", "0.5.0")
  s.add_dependency("rbnacl", "~> 2.0")
  s.add_dependency("coin-op", "0.2.1")

  # RSpec test suite deps
  s.add_development_dependency("rspec", "~> 3.0.0")
  s.add_development_dependency("webmock", "~> 1.18.0")
  s.add_development_dependency("vcr", "~> 2.9.2")
  s.add_development_dependency("pry-byebug", "~> 1.3.3")

  # Demo script deps
  s.add_development_dependency("term-ansicolor", "~> 1.3.0")
end
