require "rubygems"
require "bundler"
Bundler.setup

require "pg"
require "sequel"
require "roda"
require "base32/crockford"

require "./app"
require "./counter"

DB = Sequel.connect(ENV["DATABASE_URL"], max_connections: 5)
