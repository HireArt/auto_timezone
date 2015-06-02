module AutoTimezone
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc 'Copies auto_timezone config to your initializers.'
      source_root File.expand_path('../templates', __FILE__)

      def create_config_file
        template 'config_initializer.rb', 'config/initializers/auto_timezone.rb'
      end
    end
  end
end
