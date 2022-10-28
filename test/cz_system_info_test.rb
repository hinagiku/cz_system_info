# frozen_string_literal: true

require "test_helper"

class CzSystemInfoTest < Test::Unit::TestCase
  test "VERSION" do
    assert do
      ::CzSystemInfo.const_defined?(:VERSION)
    end
  end

  test "test filesystem" do
    assert do
      ::CzSystemInfo.const_defined?(:Filesystem)
    end
  end
end
