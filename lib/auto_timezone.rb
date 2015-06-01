require 'auto_timezone/version'
require 'auto_timezone/controller'

module AutoTimezone
  class Engine < ::Rails::Engine
  end
end

ActionController::Base.send :include, AutoTimezone::Controller
