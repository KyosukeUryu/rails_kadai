config.time_zone = 'Tokyo'
config.active_record.default_timezone = :local

require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module RailsKadai
  class Application < Rails::Application
    config.load_defaults 5.2
<<<<<<< HEAD

=======
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
>>>>>>> develop
  end
end
