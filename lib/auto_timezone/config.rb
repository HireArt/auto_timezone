module AutoTimezone
  class Config
    attr_accessor :preferred_timezones
    attr_accessor :default_timezone_block

    def initialize
      set_defaults
    end

    def default_timezone(&block)
      self.default_timezone_block = block
    end

  private

    def set_defaults
      self.preferred_timezones = %w(US/Eastern US/Central US/Mountain US/Pacific)
    end
  end

  def self.configure(&block)
    block.call(config)
  end

  def self.config
    @config ||= Config.new
  end
end
