Pry.editor = "vim"

require 'logger'
require 'awesome_print'
require 'pry-doc'
require 'sqlite3'

require 'active_support/all'
require 'active_record'

# ENV['DATABASE_URL'] ||= "sqlite3://users.db"
ActiveRecord::Base.logger = Logger.new(STDOUT)

# ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])
# ActiveRecord::Base.colorize_logging = false


conn = ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database: "users.db" # ":memory:"
)
