require 'tuturu/version'

module Tuturu
  module Extension
    def tuturu
      true
    end

    alias_method(:to_true, :tuturu)
  end
end

BasicObject.include(::Tuturu::Extension)

module Kernel
  private

  def Tuturu(_)
    tuturu
  end
end
