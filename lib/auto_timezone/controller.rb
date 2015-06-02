require_relative 'sundial'

module AutoTimezone
  module Controller
    def self.included(base)
      base.prepend_around_filter :use_auto_timezone
    end

  private

    def use_auto_timezone(&block)
      Time.use_zone(Sundial.new(self).current_timezone, &block)
    end
  end
end
