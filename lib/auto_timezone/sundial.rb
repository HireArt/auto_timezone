module AutoTimezone
  class Sundial
    def initialize(ctx)
      @ctx = ctx
    end

    def current_timezone
      @current_timezone ||= Time.find_zone(timezone_name)
    end

    def self.preferred_zones
      @preferred_zones ||= AutoTimezone.config.preferred_timezones.map { |z| Time.find_zone(z) }
    end

  private

    def timezone_name
      cookies[:auto_timezone] ||= @ctx.session[:time_zone_name] # TODO: Use configuration for this.
      cookies[:auto_timezone] ||= timezone_from_offset
    end

    def timezone_from_offset
      find_zone_by_offset(cookies[:auto_timezone_offset].presence.try(:to_i)).try(:name)
    end

    def find_zone_by_offset(offset)
      self.class.preferred_zones.find { |z| z.utc_offset == offset } || Time.find_zone(offset)
    end

    def cookies
      @ctx.send(:cookies)
    end
  end
end
