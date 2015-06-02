module AutoTimezone
  module Controller
    PREFERRED_ZONES = AutoTimezone.config.preferred_timezones.map { |z| Time.find_zone(z) }

    def self.included(base)
      base.prepend_around_filter :use_auto_timezone
    end

  private

    def current_timezone
      cookies[:auto_timezone] ||= session[:time_zone_name] # TODO: Use configuration for this.
      if cookies[:auto_timezone_offset]
        cookies[:auto_timezone] ||= time_zone_name_from_offset(cookies[:auto_timezone_offset].to_i)
      end
      Time.find_zone(cookies[:auto_timezone])
    end

    def use_auto_timezone(&block)
      Time.use_zone(current_timezone, &block)
    end

    def time_zone_name_from_offset(offset)
      (PREFERRED_ZONES.find { |z| z.utc_offset == offset } || Time.find_zone(offset)).try(:name)
    end
  end
end
