activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

configure :development do
  activate :livereload
  activate :directory_indexes
end

configure :build do
  activate :directory_indexes
  # Pages serves this at /software-nick-burns-io/ until the custom domain is
  # live, so absolute asset paths 404 at the github.io root.
  set :relative_links, true
  activate :relative_assets
end
