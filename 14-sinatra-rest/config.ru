# Rack config file, defines the configuration of our server.

require_relative "./config/environment"

use Rack::MethodOverride
run ApplicationController
use BooksController
