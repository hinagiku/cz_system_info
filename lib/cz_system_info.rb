# frozen_string_literal: true

require_relative "cz_system_info/version"
require_relative "cz_system_info/cpu"
require_relative "cz_system_info/filesystem"
require_relative "cz_system_info/memory"
require_relative "cz_system_info/uptime"

module CzSystemInfo
  class Error < StandardError; end
  # Your code goes here...
end
